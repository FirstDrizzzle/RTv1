#include "RTv1.h"

int		alloc_ray(t_main *major, char **str)
{
	int size;

	if (!correct_param_obj(str) || ft_strlen(str[1]) > 2)
		return (0);
	else
	{
		size = ft_atoi(str[1]);
		major->ray = (t_ray *) malloc(sizeof(t_ray) * (size));
	}
	return (1);
}

int		dis_ray(t_main *major, char **str, int *i, int *size)
{
	*i = 0;
	major->count_ray = ft_atoi(str[1]);
	*size = major->count_ray;
	if (*size > 10 || *size <= 0)
		return (0);
	if (alloc_ray(major, str) == 0)
		return (0);
	return (1);
}

void	data_ray(t_ray *ray, int r, t_vec pos_coor, char **str)
{
	ray->pos= pos_coor;
	ray->vec = init_vec(ft_atoi(str[3]), ft_atoi(str[4]), ft_atoi(str[5]));
	ray->t = r;
}