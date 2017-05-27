#include "RTv1.h"

int		alloc_sph(t_main *major, char **str)
{
	int size;
	if (!correct_param_obj(str) || ft_strlen(str[1]) > 2)
		return (0);
	else
	{
		size = ft_atoi(str[1]);
		major->sph = (t_sph *)malloc(sizeof(t_sph) * (size));
	}
	return (1);
}

int		dis_sph(t_main *major, char **str, int *i, int *size)
{
	*i = 0;
	major->count_sph = ft_atoi(str[1]);
	*size = major->count_sph;
	if (*size > 10 || *size <= 0)
		return (0);
	if (alloc_sph(major, str) == 0)
		return (0);
	return (1);
}

void	data_sph(t_sph *sph, int r, t_vec pos_coor, t_color col)
{
	sph->cent = pos_coor;
	sph->rgbo = col;
	sph->r = r;
}