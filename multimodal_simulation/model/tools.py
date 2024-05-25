import autograd.numpy as np
from autograd import grad
from autograd.numpy import log, sqrt, sin, cos, exp, pi, prod
from autograd.numpy.random import normal, uniform


class Helper:
    def __init__(self, myClass, max_radius=1, grid_radius=1e-2, grid_curve=1e-3):  # finer grid is much slower
        self.myClass = myClass(radius=max_radius)
        self.cached_points_list = []
        self.grid_radius = grid_radius
        self.max_radius = max_radius
        for radius in np.arange(0., max_radius, max_radius * grid_radius):
            curClass = myClass(radius=radius)
            candidate_points = curClass.position(np.arange(0, 1, grid_curve))
            self.cached_points_list.append(candidate_points)

    def inside_domain(self, test_point=np.array([1, -0.6])):
        test_point = test_point.reshape(1, -1, 1)
        min_rmse = np.min(np.sqrt(np.sum((self.cached_points_list - test_point) ** 2, axis=1)))
        return min_rmse < self.grid_radius * self.max_radius

    def binary_search_boundary(self, left, right):
        if not self.inside_domain(left):
            assert "left should be in the domain."
        if self.inside_domain(right):
            return right

        cnt = 0
        while not self.inside_domain(right) and cnt < 10:
            mid = (left + right) / 2
            if self.inside_domain(mid):
                left = mid.copy()
            else:
                right = mid.copy()
            cnt += 1
        return mid

    def get_reflection(self, left, right):
        boundary = self.binary_search_boundary(left, right)
        nu = right - boundary
        # compute unit normal vector
        grid_arrays = np.arange(0, 1, self.grid_radius)
        points = self.myClass.position(grid_arrays)
        idx = np.argmin(np.sum((points - boundary.reshape(-1, 1)) ** 2, axis=0))
        boundary_t = grid_arrays[idx]
        unit_normal = self.myClass.unit_normal(boundary_t)

        # http://www.sunshine2k.de/articles/coding/vectorreflection/vectorreflection.html
        reflected_nu = nu - 2 * np.inner(nu, unit_normal) * unit_normal
        reflection_points = boundary + reflected_nu
        return boundary + reflected_nu, boundary
