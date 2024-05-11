clear

conda activate langevin
python run_flower.py

# 20240510
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 5e-4 --lr_gap 10.0 --hat_var 9.5 --num_points 1000 --save_after 10 --n_epoch 500000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True
# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 1e-3 --M 5 --num_points 1000 --save_after 10 --n_epoch 500000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True
# python sample_sgld_with_bound.py --optimizer 'sgld' --lr 5e-4 --num_points 1000 --save_after 10 --n_epoch 500000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True


# previous
# python sample_sgld_with_bound.py --optimizer 'sgld' --lr 1e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --if_include_domain True
# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 1e-3 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --if_include_domain True

# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 5e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain False
# python sample_sgld_with_bound.py --optimizer 'sgld' --lr 1e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --if_include_domain False
# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 1e-3 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --if_include_domain False

# python sample_sgld_with_bound.py --optimizer 'sgld' --lr 5e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 100000 --if_include_domain True --domain_type flower --radius 2 --if_gifs False --seed 2407 --T_low 0.05
# python sample_sgld_with_bound.py --optimizer 'sgld' --lr 6e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 100000 --if_include_domain True --domain_type flower --radius 2 --if_gifs False --seed 2407
# python sample_sgld_with_bound.py --optimizer 'sgld' --lr 7e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 100000 --if_include_domain True --domain_type flower --radius 2 --if_gifs False --seed 2407
# python sample_sgld_with_bound.py --optimizer 'sgld' --lr 8e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 100000 --if_include_domain True --domain_type flower --radius 2 --if_gifs False --seed 2407
# python sample_sgld_with_bound.py --optimizer 'sgld' --lr 9e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 100000 --if_include_domain True --domain_type flower --radius 2 --if_gifs False --seed 2407
# python sample_sgld_with_bound.py --optimizer 'sgld' --lr 1e-3 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 100000 --if_include_domain True --domain_type flower --radius 2 --if_gifs False --seed 2407
# python sample_sgld_with_bound.py --optimizer 'sgld' --lr 2e-3 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 100000 --if_include_domain True --domain_type flower --radius 2 --if_gifs False --seed 2407
# python sample_sgld_with_bound.py --optimizer 'sgld' --lr 3e-3 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 100000 --if_include_domain True --domain_type flower --radius 2 --if_gifs False --seed 2407
# python sample_sgld_with_bound.py --optimizer 'sgld' --lr 4e-3 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 100000 --if_include_domain True --domain_type flower --radius 2 --if_gifs False --seed 2407
# python sample_sgld_with_bound.py --optimizer 'sgld' --lr 5e-3 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 100000 --if_include_domain True --domain_type flower --radius 2 --if_gifs False --seed 2407

# # metropolis hasting
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 5e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True --hat_var 9.0
# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 1e-3 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True
# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 2e-3 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True
# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 3e-3 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True
# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 4e-3 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True
# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 5e-3 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True
# python sample_sgld_with_bound.py --optimizer 'sgld' --lr 5e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True


# # Regularization
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 5e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain False --regularization 0.1
# python sample_sgld_with_bound.py --optimizer 'sgld' --lr 5e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --if_include_domain False --regularization 0.1
# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 1e-3 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --if_include_domain False --regularization 0.1

# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 5e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain False --regularization 0.5
# python sample_sgld_with_bound.py --optimizer 'sgld' --lr 5e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --if_include_domain False --regularization 0.5
# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 1e-3 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --if_include_domain False --regularization 0.5

# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 5e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain False --regularization 1.0
# python sample_sgld_with_bound.py --optimizer 'sgld' --lr 5e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --if_include_domain False --regularization 1.0
# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 1e-3 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --if_include_domain False --regularization 1.0


# # diameter test & mixing rates
# python sample_diameter.py --optimizer 'resgld' --lr 2e-5 --lr_gap 10.0 --num_points 100 --save_after 10 --n_epoch 100000 --domain_type polygon --radius 3.0 --if_gifs False --seed 3407 --if_include_domain True
# python sample_diameter.py --optimizer 'resgld' --lr 2e-5 --lr_gap 10.0 --num_points 100 --save_after 10 --n_epoch 100000 --domain_type polygon --radius 2.9 --if_gifs False --seed 2410 --if_include_domain True
# python sample_diameter.py --optimizer 'resgld' --lr 2e-5 --lr_gap 10.0 --num_points 100 --save_after 10 --n_epoch 100000 --domain_type polygon --radius 2.8 --if_gifs False --seed 2407 --if_include_domain True
# python sample_diameter.py --optimizer 'resgld' --lr 2e-5 --lr_gap 10.0 --num_points 100 --save_after 10 --n_epoch 100000 --domain_type polygon --radius 2.7 --if_gifs False --seed 3407 --if_include_domain True
# python sample_diameter.py --optimizer 'resgld' --lr 2e-5 --lr_gap 10.0 --num_points 100 --save_after 10 --n_epoch 100000 --domain_type polygon --radius 2.6 --if_gifs False --seed 2407 --if_include_domain True
# python sample_diameter.py --optimizer 'resgld' --lr 2e-5 --lr_gap 10.0 --num_points 100 --save_after 10 --n_epoch 100000 --domain_type polygon --radius 2.5 --if_gifs False --seed 3407 --if_include_domain True
# python sample_diameter.py --optimizer 'resgld' --lr 2e-5 --lr_gap 10.0 --num_points 100 --save_after 10 --n_epoch 100000 --domain_type polygon --radius 2.4 --if_gifs False --seed 2407 --if_include_domain True
# python sample_diameter.py --optimizer 'resgld' --lr 2e-5 --lr_gap 10.0 --num_points 100 --save_after 10 --n_epoch 100000 --domain_type polygon --radius 2.3 --if_gifs False --seed 2407 --if_include_domain True
# python sample_diameter.py --optimizer 'resgld' --lr 2e-5 --lr_gap 10.0 --num_points 100 --save_after 10 --n_epoch 100000 --domain_type polygon --radius 2.2 --if_gifs False --seed 2407 --if_include_domain True
# python sample_diameter.py --optimizer 'resgld' --lr 2e-5 --lr_gap 10.0 --num_points 100 --save_after 10 --n_epoch 100000 --domain_type polygon --radius 2.1 --if_gifs False --seed 3407 --if_include_domain True
# python sample_diameter.py --optimizer 'resgld' --lr 2e-5 --lr_gap 10.0 --num_points 100 --save_after 10 --n_epoch 100000 --domain_type polygon --radius 2.0 --if_gifs False --seed 2407 --if_include_domain True
# python sample_diameter.py --optimizer 'resgld' --lr 2e-5 --lr_gap 10.0 --num_points 100 --save_after 10 --n_epoch 100000 --domain_type polygon --radius 1.9 --if_gifs False --seed 2407 --if_include_domain True
# python sample_diameter.py --optimizer 'resgld' --lr 2e-5 --lr_gap 10.0 --num_points 100 --save_after 10 --n_epoch 100000 --domain_type polygon --radius 1.8 --if_gifs False --seed 3407 --if_include_domain True
# python sample_diameter.py --optimizer 'resgld' --lr 2e-5 --lr_gap 10.0 --num_points 100 --save_after 10 --n_epoch 100000 --domain_type polygon --radius 1.7 --if_gifs False --seed 2407 --if_include_domain True
# python sample_diameter.py --optimizer 'resgld' --lr 2e-5 --lr_gap 10.0 --num_points 100 --save_after 10 --n_epoch 100000 --domain_type polygon --radius 1.6 --if_gifs False --seed 3407 --if_include_domain True
# python sample_diameter.py --optimizer 'resgld' --lr 2e-5 --lr_gap 10.0 --num_points 100 --save_after 10 --n_epoch 100000 --domain_type polygon --radius 1.5 --if_gifs False --seed 2407 --if_include_domain True
# python sample_diameter.py --optimizer 'resgld' --lr 2e-5 --lr_gap 10.0 --num_points 100 --save_after 10 --n_epoch 100000 --domain_type polygon --radius 1.5 --if_gifs False --seed 2407 --if_include_domain True
# python sample_diameter.py --optimizer 'resgld' --lr 2e-5 --lr_gap 10.0 --num_points 100 --save_after 10 --n_epoch 100000 --domain_type polygon --radius 1.4 --if_gifs False --seed 2407 --if_include_domain True
# python sample_diameter.py --optimizer 'resgld' --lr 2e-5 --lr_gap 10.0 --num_points 100 --save_after 10 --n_epoch 100000 --domain_type polygon --radius 1.3 --if_gifs False --seed 2407 --if_include_domain True
# python sample_diameter.py --optimizer 'resgld' --lr 2e-5 --lr_gap 10.0 --num_points 100 --save_after 10 --n_epoch 100000 --domain_type polygon --radius 1.2 --if_gifs False --seed 2407 --if_include_domain True
# python sample_diameter.py --optimizer 'resgld' --lr 2e-5 --lr_gap 10.0 --num_points 100 --save_after 10 --n_epoch 100000 --domain_type polygon --radius 1.1 --if_gifs False --seed 2407 --if_include_domain True
# python sample_diameter.py --optimizer 'resgld' --lr 2e-5 --lr_gap 10.0 --num_points 100 --save_after 10 --n_epoch 100000 --domain_type polygon --radius 1.0 --if_gifs False --seed 2407 --if_include_domain True


# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 5e-3 --lr_gap 2.0 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 5e-3 --lr_gap 5.0 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 5e-3 --lr_gap 10.0 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True
# 
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 4e-3 --lr_gap 2.0 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 4e-3 --lr_gap 5.0 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 4e-3 --lr_gap 10.0 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True
# 
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 3e-3 --lr_gap 2.0 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 3e-3 --lr_gap 5.0 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 3e-3 --lr_gap 10.0 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True
# 
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 2e-3 --lr_gap 2.0 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 2e-3 --lr_gap 5.0 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 2e-3 --lr_gap 10.0 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True
# 
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 1e-3 --lr_gap 2.0 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 1e-3 --lr_gap 5.0 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 1e-3 --lr_gap 10.0 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True
# 
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 8e-4 --lr_gap 2.0 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 8e-4 --lr_gap 5.0 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 8e-4 --lr_gap 10.0 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True
# 
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 6e-4 --lr_gap 2.0 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 6e-4 --lr_gap 5.0 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 6e-4 --lr_gap 10.0 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True
# 
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 4e-4 --lr_gap 2.0 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 4e-4 --lr_gap 5.0 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 4e-4 --lr_gap 10.0 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True
# 
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 2e-4 --lr_gap 2.0 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 2e-4 --lr_gap 5.0 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 2e-4 --lr_gap 10.0 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True




# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 8e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --if_include_domain False
# python sample_sgld_with_bound.py --optimizer 'sgld' --lr 8e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --if_include_domain False
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 8e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain False

# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 6e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --if_include_domain False
# python sample_sgld_with_bound.py --optimizer 'sgld' --lr 6e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --if_include_domain False
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 6e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain False

# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 4e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --if_include_domain False
# python sample_sgld_with_bound.py --optimizer 'sgld' --lr 4e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --if_include_domain False
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 4e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain False

# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 2e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --if_include_domain False
# python sample_sgld_with_bound.py --optimizer 'sgld' --lr 2e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --if_include_domain False
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 2e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain False

# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 1e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --if_include_domain False
# python sample_sgld_with_bound.py --optimizer 'sgld' --lr 1e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --if_include_domain False
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 1e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain False

# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 8e-5 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --if_include_domain False
# python sample_sgld_with_bound.py --optimizer 'sgld' --lr 8e-5 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --if_include_domain False
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 8e-5 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain False




# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 8e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True --M 20
# python sample_sgld_with_bound.py --optimizer 'sgld' --lr 8e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 8e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True

# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 6e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True
# python sample_sgld_with_bound.py --optimizer 'sgld' --lr 6e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 6e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True

# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 4e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True
# python sample_sgld_with_bound.py --optimizer 'sgld' --lr 4e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 4e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True

# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 2e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True
# python sample_sgld_with_bound.py --optimizer 'sgld' --lr 2e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 2e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 2407 --if_include_domain True

# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 8e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 3407 --if_include_domain True
# python sample_sgld_with_bound.py --optimizer 'sgld' --lr 8e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 3407 --if_include_domain True
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 8e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 3407 --if_include_domain True

# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 6e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 3407 --if_include_domain True
# python sample_sgld_with_bound.py --optimizer 'sgld' --lr 6e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 3407 --if_include_domain True
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 6e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 3407 --if_include_domain True

# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 4e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 3407 --if_include_domain True
# python sample_sgld_with_bound.py --optimizer 'sgld' --lr 4e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 3407 --if_include_domain True
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 4e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 3407 --if_include_domain True

# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 2e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 3407 --if_include_domain True
# python sample_sgld_with_bound.py --optimizer 'sgld' --lr 2e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 3407 --if_include_domain True
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 2e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 3407 --if_include_domain True


# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 3e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False
# python sample_sgld_with_bound.py --optimizer 'sgld' --lr 1e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False
# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 1e-3 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False

# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 5e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 3402
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 5e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 3403
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 5e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 3404
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 5e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 3405
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 5e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 3406
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 5e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 3407
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 5e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 3408
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 5e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 3409
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 5e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 300000 --domain_type flower --radius 2 --if_gifs False --seed 3400

# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 1e-3 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 500000 --domain_type flower --radius 2 --if_gifs False --seed 3408 --save_after 1
# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 1e-3 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 500000 --domain_type flower --radius 2 --if_gifs False --seed 3409 --save_after 1
# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 1e-3 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 500000 --domain_type flower --radius 2 --if_gifs False --seed 3410 --save_after 1
# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 1e-3 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 500000 --domain_type flower --radius 2 --if_gifs False --seed 3411 --save_after 1
# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 1e-3 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 500000 --domain_type flower --radius 2 --if_gifs False --seed 3412 --save_after 1


# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 2e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 1000000 --domain_type flower --radius 2 --if_gifs False

# python sample_sgld_with_bound.py --optimizer 'sgld' --lr 1e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 1000000 --domain_type heart --radius 1.5 --if_gifs False
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 1e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 1000000 --domain_type heart --radius 1.5 --if_gifs False
# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 1e-3 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 500000 --domain_type heart --radius 1.5 --if_gifs False --seed 3407 --save_after 1
# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 1e-3 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 500000 --domain_type heart --radius 1.5 --if_gifs False --seed 3408 --save_after 1
# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 1e-3 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 500000 --domain_type heart --radius 1.5 --if_gifs False --seed 3409 --save_after 1

# python sample_sgld_with_bound.py --optimizer 'sgld' --lr 1e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 1000000 --domain_type star --radius 2.5 --if_gifs False
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 1e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 1000000 --domain_type star --radius 2.5 --if_gifs False
# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 1e-3 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 500000 --domain_type star --radius 2.5 --if_gifs False --seed 3407 --save_after 1
# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 1e-3 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 500000 --domain_type star --radius 2.5 --if_gifs False --seed 3408 --save_after 1
# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 1e-3 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 500000 --domain_type star --radius 2.5 --if_gifs False --seed 3409 --save_after 1

# python sample_sgld_with_bound.py --optimizer 'sgld' --lr 1e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 1000000 --domain_type polygon --radius 2 --if_gifs False
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 1e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 1000000 --domain_type polygon --radius 2 --if_gifs False
# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 1e-3 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 500000 --domain_type polygon --radius 2 --if_gifs False --seed 3407 --save_after 1
# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 1e-3 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 500000 --domain_type polygon --radius 2 --if_gifs False --seed 3408 --save_after 1
# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 1e-3 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 500000 --domain_type polygon --radius 2 --if_gifs False --seed 3409 --save_after 1

# python sample_sgld_with_bound.py --optimizer 'sgld' --lr 1e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 1000000 --domain_type cross --radius 2 --if_gifs False
# python sample_sgld_with_bound.py --optimizer 'resgld' --lr 1e-4 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 1000000 --domain_type cross --radius 2 --if_gifs False
# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 1e-3 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 500000 --domain_type cross --radius 2 --if_gifs False --seed 3407 --save_after 1
# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 1e-3 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 500000 --domain_type cross --radius 2 --if_gifs False --seed 3408 --save_after 1
# python sample_sgld_with_bound.py --optimizer 'cyclic_sgld' --lr 1e-3 --decay_rate 3e-3 --num_points 1000 --save_after 10 --n_epoch 500000 --domain_type cross --radius 2 --if_gifs False --seed 3409 --save_after 1

