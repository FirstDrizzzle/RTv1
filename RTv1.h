//
// Created by Roman Ishchenko on 4/29/17.
//

#ifndef RTV1_RTV1_H
# define RTV1_RTV1_H

#include "get_next_line.h"
#include "unistd.h"
#include "stdlib.h"
#include <mlx.h>
#include <math.h>

# define H 400
# define W 400
# define T 200
# define SQR(x) ((x) * (x))
# define PI 3.14159265358979
# define SPH "sphere"
# define CON "cone"
# define PLA "plane"
# define CYL "cylinder"
# define RAY "ray"

typedef struct	s_vect
{
	double x;
	double y;
	double z;
}				t_vec;

typedef struct	s_vecrgb
{
	double r;
	double g;
	double b;
	double o;
}				t_color;

typedef struct	s_sphere
{
	t_vec		cent;
	t_color		rgbo;
	double		nv;
	double 		r;
}				t_sph;

typedef struct	s_ray
{
	t_vec		pos;
	t_vec		vec;
	t_vec		nv;
	double		t;
}				t_ray;

typedef struct	s_plane
{
	t_vec		pos;
	t_vec		nv;
	t_vec		eqn;
	t_vec		normv;
	t_color		rgbo;
	double		d;
	double		p;
}				t_plane;

typedef struct	s_cylinder
{
	t_vec		cent;
	t_vec		nv;
	t_color		rgbo;
	double		r;
}				t_cyl;

typedef struct	s_cone
{
	t_vec		cent;
	t_vec		nv;
	t_color		rgbo;
	double		r;
}				t_con;

typedef struct	s_main
{
	void 		*mlx;
	void		*img;
	void 		*win;
	char 		*addr;
	int 		bpp;
	int 		sl;
	int 		endian;
	double 		x;
	double 		y;
	double 		z;
	int 		count_sph;
	int 		count_ray;
	int 		count_con;
	int 		count_cyl;
	int 		count_pl;
	int			flag; //Нормы
	t_vec		*vec;
	t_sph		*sph;
	t_ray		*ray;
	t_con		*con;
	t_cyl		*cyl;
	t_plane		*plane;
}				t_main;


t_sph			init_sphere(t_vec vec, double r, t_color color);
t_ray			init_ray(t_vec vec, double t, t_vec direct);
t_vec			init_vec(double x, double y, double z);
t_color			init_colors(double r, double g, double b, double o);
t_vec			unit_vec(t_vec vec);
int				core_point_check(int ac, char **av, t_main *major);
int				distribution_func(char **str, t_main *major);
int				distribution_func_2(char **str, t_main *major, int *i, int *size);
int				correct_param_obj(char **str);
int				alloc_sph(t_main *major, char **str);
int				check_num(char **str);
int				incor_char(char **arr);
int				dis_sph(t_main *major, char **str, int *i, int *size);
void			data_sph(t_sph *sph, int r, t_vec pos_coor, t_color col);
int				alloc_ray(t_main *major, char **str);
int				dis_ray(t_main *major, char **str, int *i, int *size);
void			data_ray(t_ray *ray, int r, t_vec pos_coor, char **str);
int				alloc_cone(t_main *major, char **str);
int				dis_cone(t_main *major, char **str, int *i, int *size);
void			data_cone(t_con *con, int r, t_vec pos_coor, t_color col);
int				dis_plane(t_main *major, char **str, int *i, int *size);
void			data_plane(t_plane *plane, char **str, t_vec pos_coor, t_color col);
int				alloc_cylinder(t_main *major, char **str);
int				dis_cylinder(t_main *major, char **str, int *i, int *size);
void			data_cylinder(t_cyl *cyl, int r, t_vec pos_coor, t_color col);

#endif //RTV1_RTV1_H
