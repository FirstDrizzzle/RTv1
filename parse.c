#include "RTv1.h"

int incor_char(char **arg)
{
	int j;
	int i;

	i = 0;
	j = 0;
	while (arg[j])
	{
		while (arg[j][i])
		{
			if (!ft_isdigit(arg[j][i]) && i != 0)
				return (0);
			i++;
		}
		i = 0;
		j++;
	}
	return (1);
}

int			check_num(char **str)
{
	if (!incor_char(str))
		return (0);
	return (1);
}

void		init_color_plane(char **str, t_color *col)
{
	*col = init_colors(ft_atoi(str[6]),
							  ft_atoi(str[7]), ft_atoi(str[8]), ft_atoi(str[9]));
}

void		alloc_coor(t_main *major, char **str, int *i)
{
	t_vec	pos_coor;
	t_color	col;
	int 	r;

	r = ((major->flag != 1)? ft_atoi(str[7]) : ft_atoi(str[6]));
	if (major->flag != 1)
	{
		if (major->flag != 3)
			col = init_colors(ft_atoi(str[3]),
						  ft_atoi(str[4]), ft_atoi(str[5]), ft_atoi(str[6]));
		else
			init_color_plane(str, &col);
	}
	pos_coor = init_vec(ft_atoi(str[0]), ft_atoi(str[1]), ft_atoi(str[2]));
	if (major->flag == 0)
		data_sph((&major->sph[*i]), r, pos_coor, col);
	else if (major->flag == 1)
		data_ray((&major->ray[*i]), r, pos_coor, str);
	else if (major->flag == 2)
		data_cone((&major->con[*i]), r, pos_coor, col);
	else if (major->flag == 3)
		data_plane((&major->plane[*i]), str, pos_coor, col);
	else if (major->flag == 4)
		data_cylinder((&major->cyl[*i]), r, pos_coor, col);
	(*i)++;
}


int			correct_param_obj(char **str)
{
	int 	i;

	i = -1;
	if (!incor_char(&str[1]) || str[1][0] == '-' || str[1][0] == '0')
		return (0);
	while (str[1][++i])
	{
		if (!ft_isdigit(str[1][i]))
			return (0);
	}
	return (1);
}

int				distribution_func(char **str, t_main *major)
{
	static int	i;
	static int	size;

	if (!ft_strcmp(str[0], SPH))
	{
		major->flag = 0;
		return(dis_sph(major, str, &i, &size));
	}
	else if (!ft_strcmp(str[0], RAY) && i == size)
	{
		major->flag = 1;
		return(dis_ray(major, str, &i, &size));
	}
	else if ((!ft_strcmp(str[0], CON) && i == size)
			 || (!ft_strcmp(str[0], PLA) && i == size)
			 || (!ft_strcmp(str[0], CYL) && i == size))
		return (distribution_func_2(str, major, &i, &size));
//	else if (!ft_strcmp(str[0], CON) && i == size)
//	{
//		major->flag = 2;
//		return (dis_cone(major, str, &i, &size));
//	}
//	else if (!ft_strcmp(str[0], PLA) && i == size)
//	{
//		major->flag = 3;
//		return (dis_plane(major, str, &i, &size));
//	}
//	else if (!ft_strcmp(str[0], CYL) && i == size)
//	{
//		major->flag = 4;
//		return (dis_cylinder(major, str, &i, &size));
//	}
	if (ft_strcmp(str[0], SPH) && ft_strcmp(str[0], CON) && ft_strcmp(str[0], PLA)
		&& ft_strcmp(str[0], CYL) && ft_strcmp(str[0], RAY))
		alloc_coor(major, str, &i);
	return (1);
}

int 	distribution_func_2(char **str, t_main *major, int *i, int *size)
{
	if (!ft_strcmp(str[0], CON) && *i == *size)
	{
		major->flag = 2;
		return (dis_cone(major, str, i, size));
	}
	else if (!ft_strcmp(str[0], PLA) && *i == *size)
	{
		major->flag = 3;
		return (dis_plane(major, str, i, size));
	}
	else if (!ft_strcmp(str[0], CYL) && *i == *size)
	{
		major->flag = 4;
		return (dis_cylinder(major, str, i, size));
	}
	return (0);
}

/*
** name_obj count \n center or base position,-----> BGRO  <-----!!!, radius or axuliary value
*/

void		del_buf(char **str)
{
	int 	size;
	int 	i;

	i = -1;
	size = 0;
	while (str[++i])
		size++;
	i = -1;
	while (++i < size)
		ft_strdel(&str[i]);
}

int			core_point_check(int ac, char **av, t_main *major)
{
	int		fd;
	char 	*str;
	char	**buf_str;

	fd = open(av[ac - 1], O_RDONLY);
	if (fd < 0)
		return (0);
	while (get_next_line(fd, &str) > 0)
	{
		buf_str = ft_strsplit(str, '\t');
		if (distribution_func(buf_str, major) == 0)
			return (0);
		del_buf(buf_str);
		ft_strdel(buf_str);
		ft_strdel(&str);
	}
	return (1);
}