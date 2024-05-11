import os
import imageio
import argparse
import seaborn as sns
from tqdm import tqdm
import matplotlib as mpl
from autograd import grad
from model.optimizer import Sampler
import autograd.numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
from autograd.numpy.random import normal, uniform
from autograd.numpy import log, sqrt, sin, cos, exp, pi, prod
from scipy.special import rel_entr
from model.event import Event
from model.tools import Helper
from model.flags import get_flags
from model.utils import mixture, mixture_expand, function_plot, select_optimizer, select_domain, kl_divergence


parser = argparse.ArgumentParser(description='Grid search')
parser.add_argument('-lr', default=5e-4, type=float, help='learning rate')
parser.add_argument('-T', default=1, type=float, help='inverse temperature')
parser.add_argument('-zeta', default=0.75, type=float, help='Adaptive hyperparameter')
parser.add_argument('-parts', default=100, type=int, help='Total numer of partitions')
parser.add_argument('-decay_lr', default=3e-3, type=float, help='Decay lr')
parser.add_argument('-seed', default=1, type=int, help='seed')
pars = parser.parse_args()

np.set_printoptions(precision=3)
np.set_printoptions(suppress=True)
np.random.seed(pars.seed)

colormap = mpl.cm.get_cmap('gist_heat').reversed()
split_ = 10
total_ = 1e5
plot_after = 500
warm_up = 1000
n_cycle = 5


def kl_div(ground, empirical_density, samples, grid=None, bound=[-2.5, 2.5]):

    grid_x, grid_y = grid
    grid_size = grid_x[1] - grid_x[0]

    for x, y in samples:
        if bound[0] <= x <= bound[1] and bound[0] <= y <= bound[1]:
            # Check if the sample is within our region of interest
            # Find the right cell for each sample
            i = np.digitize(x, grid_x) - 1  # np.digitize bins are 1-indexed
            j = np.digitize(y, grid_y) - 1
            if i < len(grid_x) - 1 and j < len(grid_y) - 1:  # Avoid incrementing the overflow bin
                empirical_density[j, i] += 1
        ground_norm = ground / np.sum(ground)
        density_norm = empirical_density / np.sum(empirical_density)
        kl_div = np.sum(rel_entr(ground_norm + np.finfo(float).eps, density_norm + np.finfo(float).eps)) * grid_size ** 2
    return kl_div, empirical_density

def getfiles(dirpath):
    a = [s for s in os.listdir(dirpath)
         if os.path.isfile(os.path.join(dirpath, s))]
    a.sort(key=lambda s: os.path.getmtime(os.path.join(dirpath, s)))
    return a


def mixture(x):
    try:
        energy = ((x[0] ** 2 + x[1] ** 2) / 10 - (cos(2.0 * pi * x[0]) + cos(2.0 * pi * x[1]))) / 0.5  # 2
    except IndexError:
        x = x[0]
        energy = ((x[0] ** 2 + x[1] ** 2) / 10 - (cos(2.0 * pi * x[0]) + cos(2.0 * pi * x[1]))) / 0.5  # 2
        print('Index Errors')
    regularizer = ((x[0] ** 2 + x[1] ** 2) > 20) * ((x[0] ** 2 + x[1] ** 2) - 20)
    return energy + regularizer


def mixture_expand(x, y): return mixture([x, y])


def function_plot(x, y): return np.exp(-mixture([x, y]))


flags = get_flags()
flags.num_points = 100
boundary_ = 2.5

axis_x = np.linspace(-boundary_, boundary_, flags.num_points)
axis_y = np.linspace(-boundary_, boundary_, flags.num_points)
axis_X, axis_Y = np.meshgrid(axis_x, axis_y)
axis_x_large = np.linspace(-boundary_, boundary_, flags.num_points*5)
axis_y_large = np.linspace(-boundary_, boundary_, flags.num_points*5)
axis_X_large, axis_Y_large = np.meshgrid(axis_x_large, axis_y_large)

prob_grid = function_plot(axis_X, axis_Y)
prob_grid_modified = np.hstack((axis_X.reshape(-1, 1), axis_Y.reshape(-1, 1)))

np.set_printoptions(precision=3)
np.set_printoptions(suppress=True)
np.random.seed(flags.seed)

# myHeart = Flower(petals=5, move_out=3)
myHelper = Helper(select_domain(flags.domain_type), max_radius=flags.radius, grid_radius=1e-2, grid_curve=1e-3)
need_bound = flags.if_include_domain

num_points = flags.num_points

if need_bound:
    try:
        ground_truth = np.load(
            './logs/data/' + flags.domain_type + '_' + str(flags.num_points) + '.npy').reshape(len(axis_x), len(axis_y))
        truth_plot = np.load(
            './logs/data/' + flags.domain_type + '_500.npy').reshape(len(axis_x)*5, len(axis_y)*5)
    except FileNotFoundError:
        ground_truth = np.zeros(prob_grid_modified.shape[0])
        truth_plot = np.zeros(prob_grid_modified.shape[0])
        pbar = tqdm(range(ground_truth.size), dynamic_ncols=True, smoothing=0.1, desc='Process Ground Truth')

        for i in pbar:
            ground_truth[i] = myHelper.inside_domain(prob_grid_modified[i])
            # ground_truth[i] = prob_grid.reshape(-1)[i] * ground_truth[i]
            if ground_truth[i]:
                truth_plot[i] = prob_grid.reshape(-1)[i] * ground_truth[i]
            else:
                truth_plot[i] = -0.5
        ground_truth = ground_truth.reshape(num_points, -1)
        np.save(
            './logs/data/' + flags.domain_type + '_' + str(flags.num_points) + '.npy', ground_truth.reshape(len(axis_x), len(axis_y)))
        np.save(
            './logs/data/' + flags.domain_type + '_' + str(flags.num_points) + '_truth.npy', truth_plot.reshape(len(axis_x), len(axis_y)))
else:
    ground_truth = prob_grid

energy_grid = mixture_expand(axis_X, axis_Y)
# prob_grid = function_plot(axis_X, axis_Y)
prob_grid = ground_truth.copy()

# plt.contour(axis_X, axis_Y, ground_truth, cmap=colormap)
# plt.show()

lower_bound, upper_bound = np.min(energy_grid) - 1, np.max(energy_grid) + 1
sampler = Sampler(
    f=mixture, dim=2, boundary=[-boundary_, boundary_], xinit=[0., 0.], partition=[lower_bound, upper_bound],
    lr=pars.lr, T=pars.T, zeta=pars.zeta, decay_lr=pars.decay_lr, parts=pars.parts, helper=myHelper)

sgld_x = np.array([sampler.sgld_beta])
cycsgld_x = np.array([sampler.cycsgld_beta])
resgld_x = np.array([sampler.resgld_beta_low])
importance_weights = [0., ]

sgld_x_new = np.array([sampler.sgld_beta])
resgld_x_new = np.array([sampler.resgld_beta_low])
cycsgld_x_new = np.array([sampler.cycsgld_beta])

empirical_sgld = np.zeros([len(axis_x), len(axis_y)])
empirical_cycsgld = np.zeros([len(axis_x), len(axis_y)])
empirical_resgld = np.zeros([len(axis_x), len(axis_y)])
kl_sgld = []
kl_cycsgld = []
kl_resgld = []
kl_x_axis = []
# https://matplotlib.org/3.1.0/gallery/color/named_colors.html
jump_col = ['blue', 'red']

frame_path = "./gifs/temp_frame_{idx}.png"
saved_idx = []

progress_bar = tqdm(range(int(total_) + 1), dynamic_ncols=True, smoothing=0.1, desc='Generating samples')
for iters in progress_bar:
    sampler.sgld_step()
    sampler.cycsgld_step(iters=iters, cycles=n_cycle, total=total_)
    if iters % 2 == 0:
        sampler.resgld_step()

    if iters > warm_up - 1:
        if iters % split_ == 0:
            sgld_x = np.vstack((sgld_x, sampler.sgld_beta))
            resgld_x = np.vstack((resgld_x, sampler.resgld_beta_low))
            cycsgld_x = np.vstack((cycsgld_x, sampler.cycsgld_beta))

            sgld_x_new = np.vstack((sgld_x_new, sampler.sgld_beta))
            resgld_x_new = np.vstack((resgld_x_new, sampler.resgld_beta_low))
            cycsgld_x_new = np.vstack((cycsgld_x_new, sampler.cycsgld_beta))

        if iters % plot_after == 0:

            fig = plt.figure(figsize=(13, 13), dpi=50)

            plt.subplot(2, 2, 1).set_title('SGLD', fontsize=20, fontweight='bold')
            plt.contour(axis_X_large, axis_Y_large, truth_plot, cmap=colormap)
            plt.yticks([-4, -2, 0, 2, 4])
            plt.plot(sgld_x[:, 0][:-3], sgld_x[:, 1][:-3], linewidth=0.0, marker='.', markersize=3,
                     color='grey', alpha=0.75, label="Iteration=" + str(iters))
            plt.plot(sgld_x[:, 0][:-3], sgld_x[:, 1][:-3], linewidth=0.1, color='k', alpha=0.2)
            plt.plot(sgld_x[:, 0][-3:], sgld_x[:, 1][-3:], linewidth=0.3, marker='.', markersize=10, color=jump_col[0],
                     alpha=1)
            plt.legend(loc="upper left", prop={'size': 15})

            plt.subplot(2, 2, 2).set_title('cycSGLD', fontsize=20, fontweight='bold')
            plt.contour(axis_X_large, axis_Y_large, truth_plot, cmap=colormap)
            plt.yticks([-4, -2, 0, 2, 4])
            plt.plot(cycsgld_x[:, 0][:-3], cycsgld_x[:, 1][:-3], linewidth=0.0, marker='.', markersize=3,
                     color='grey', alpha=0.75)
            plt.plot(cycsgld_x[:, 0][:-3], cycsgld_x[:, 1][:-3], linewidth=0.1, color='k', alpha=0.2)
            if sampler.r_remainder < 0.5:
                plt.plot(cycsgld_x[:, 0][-3:], cycsgld_x[:, 1][-3:], linewidth=0.3, marker='.', markersize=10,
                         color=jump_col[1], alpha=1, label=r'Exploration')
            else:
                plt.plot(cycsgld_x[:, 0][-3:], cycsgld_x[:, 1][-3:], linewidth=0.3, marker='.', markersize=10,
                         color=jump_col[0], alpha=1, label=r'Exploitation')
            plt.legend(loc="upper left", prop={'size': 15})

            plt.subplot(2, 2, 3).set_title('reSGLD', fontsize=20, fontweight='bold')
            plt.contour(axis_X_large, axis_Y_large, truth_plot, cmap=colormap)
            plt.yticks([-4, -2, 0, 2, 4])
            plt.plot(resgld_x[:, 0][-3:], resgld_x[:, 1][-3:], linewidth=0.3, marker='.', markersize=10,
                     color=jump_col[0], alpha=1.0, label="# swaps =" + str(sampler.swaps))
            plt.plot(resgld_x[:, 0][:-3], resgld_x[:, 1][:-3], linewidth=0.0, marker='.', markersize=3,
                     color='grey', alpha=0.75)
            plt.plot(resgld_x[:, 0][:-3], resgld_x[:, 1][:-3], linewidth=0.1, color='k', alpha=0.2)
            plt.legend(loc="upper left", prop={'size': 15})

            plt.tight_layout()

            kl_div_, empirical_sgld = kl_div(
                ground_truth, empirical_sgld, sgld_x_new[1:], grid=[axis_x, axis_y])
            kl_sgld.append(kl_div_)
            kl_div_, empirical_cycsgld = kl_div(
                ground_truth, empirical_cycsgld, cycsgld_x_new[1:], grid=[axis_x, axis_y])
            kl_cycsgld.append(kl_div_)
            kl_div_, empirical_resgld = kl_div(
                ground_truth, empirical_resgld, resgld_x_new[1:], grid=[axis_x, axis_y])
            kl_resgld.append(kl_div_)
            kl_x_axis.append(iters)

            plt.subplot(2, 2, 4).set_title('Kullback-Leibler Divergence', fontsize=20, fontweight='bold')
            plt.ylim(0.008, 0.1)
            plt.xlim(0, int(total_))
            plt.plot(kl_x_axis, kl_sgld, '-g', linewidth=2.5, label='R-SGLD')
            plt.plot(kl_x_axis, kl_cycsgld, '-b', linewidth=2.5, label='R-cycSGLD')
            plt.plot(kl_x_axis, kl_resgld, '-r', linewidth=2.5, label='r2SGLD')
            plt.legend(loc="upper right", prop={'size': 15})

            plt.yscale('log')
            plt.xticks([int(100), int(total_*0.25), int(total_*0.5), int(total_*0.75), int(total_)],
                       [r'', r'$2.5k$', r'$5.0k$', r'$7.5k$', r'$10.0k$'])
            plt.tight_layout()

            try:
                plt.savefig(frame_path.format(idx=iters))
            except FileNotFoundError:
                os.makedirs("./gifs/")
                plt.savefig(frame_path.format(idx=iters))
            plt.close()
            # plt.show()
            saved_idx.append(iters)

            sgld_x_new = np.array([sampler.sgld_beta])
            resgld_x_new = np.array([sampler.resgld_beta_low])
            cycsgld_x_new = np.array([sampler.cycsgld_beta])

fileList = []
path = "./gifs/"
name = "temp"

try:
    files = getfiles(path)
except FileNotFoundError:
    files = getfiles("./")
for file in files:
    if file.startswith(name):
        complete_path = path + file
        fileList.append(complete_path)

video_filename = "./sgld_flower_20240511.mp4"
gif_filename = "./sgld_flower_20240511.gif"

# Create a GIF writer with ImageIO and specify fps for GIF
with imageio.get_writer(gif_filename, mode='I', fps=20, loop=0) as writer:  # Adjust fps as needed
    for filename in fileList:
        image = imageio.imread(filename)
        writer.append_data(image)

print(f"GIF saved as {gif_filename}")


# Cleanup temp frames
for idx in saved_idx:
    os.remove(frame_path.format(idx=idx))

