#include "RTv1.h"

int		alloc_cone(t_main *major, char **str)
{
	int size;
	if (!correct_param_obj(str) || ft_strlen(str[1]) > 2)
		return (0);
	else
	{
		size = ft_atoi(str[1]);
		major->con = (t_con *) malloc(sizeof(t_con) * (size));
	}
	return (1);
}

int 	dis_cone(t_main *major, char **str, int *i, int *size)
{
	*i = 0;
	major->count_con = ft_atoi(str[1]);
	*size = major->count_con;
	if (*size > 10 || *size <= 0)
		return (0);
	if (alloc_cone(major, str) == 0)
		return (0);
	return (1);
}

void	data_cone(t_con *con, int r, t_vec pos_coor, t_color col)
{
	con->cent = pos_coor;
	con->rgbo = col;
	con->r = r;
}
