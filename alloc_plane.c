#include "RTv1.h"

int			alloc_plane(t_main *major, char **str)
{
	int		size;
	if (!correct_param_obj(str) || ft_strlen(str[1]) > 2)
		return (0);
	else
	{
		size = ft_atoi(str[1]);
		major->plane = (t_plane *) malloc(sizeof(t_plane) * (size));
	}
	return (1);
}

int 	dis_plane(t_main *major, char **str, int *i, int *size)
{
	*i = 0;
	major->count_pl = ft_atoi(str[1]);
	*size = major->count_pl;
	if (*size > 10 || *size <= 0)
		return (0);
	if (alloc_plane(major, str) == 0)
		return (0);
	return (1);
}

void	data_plane(t_plane *plane, char **str, t_vec pos_coor, t_color col)
{
	plane->pos = pos_coor;
	plane->normv.x = ft_atoi(str[3]);
	plane->normv.y = ft_atoi(str[4]);
	plane->normv.z = ft_atoi(str[5]);
	plane->nv = unit_vec(plane->normv);
	plane->rgbo = col;
	plane->p = ft_atoi(str[10]);
}