#include "RTv1.h"

int			alloc_cylinder(t_main *major, char **str)
{
	int 	size;
	if (!correct_param_obj(str) || ft_strlen(str[1]) > 2)
		return (0);
	else
	{
		size = ft_atoi(str[1]);
		major->cyl = (t_cyl *) malloc(sizeof(t_cyl) * size);
	}
	return (1);
}

int 	dis_cylinder(t_main *major, char **str, int *i, int *size)
{
	*i = 0;
	major->count_cyl = ft_atoi(str[1]);
	*size = major->count_cyl;
	if (*size > 10 || *size <= 0)
		return (0);
	if (alloc_cylinder(major, str) == 0)
		return (0);
	return (1);
}
void	data_cylinder(t_cyl *cyl, int r, t_vec pos_coor, t_color col)
{
	cyl->cent = pos_coor;
	cyl->rgbo = col;
	cyl->r = r;
}