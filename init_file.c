#include "RTv1.h"

//t_sph		init_sphere(t_vec vec, double r, t_color color)
//{
//	t_sph	ans;
//
//	ans.center = vec;
//	ans.r = r;
//	ans.rgbo.r = color.r;
//	ans.rgbo.g = color.g;
//	ans.rgbo.b = color.b;
//	ans.rgbo.o = color.o;
//	return (ans);
//}
//
t_ray		init_ray(t_vec vec, double t, t_vec direct)
{
	t_ray	ray_ret;

	ray_ret.pos = vec;
	ray_ret.t = t;
	ray_ret.vec = direct;
	ray_ret.nv = unit_vec(ray_ret.vec);

	return (ray_ret);
}

t_vec		init_vec(double x, double y, double z)
{
	t_vec	vec_ret;

	vec_ret.x = x;
	vec_ret.y = y;
	vec_ret.z = z;

	return (vec_ret);
}

t_color		init_colors(double r, double g, double b, double o)
{
	t_color	vec_color_ret;

	vec_color_ret.r = r;
	vec_color_ret.g = g;
	vec_color_ret.b = b;
	vec_color_ret.o = o;
	return (vec_color_ret);
}