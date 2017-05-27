#include <stdio.h>
#include "RTv1.h"

/*
 * minilibx/libmlx.a -o RTv1 -lmlx -framework OpenGl -framework AppKit
 */

int			exit_win(void *param)
{
	param = NULL;
	exit(0);
	return (0);
}

void		ft_put_pixel(t_main *major, int x, int y, t_color color) {
	if (x >= 0 && y >= 0 && x < W && y < H)
	{
		major->addr[x * 4 +
					y * major->sl] = (unsigned char) color.r;
		major->addr[x * 4 + 1 +
					y * major->sl] = (unsigned char) color.g;
		major->addr[x * 4 + 2 +
					y * major->sl] = (unsigned char) color.b;
		major->addr[x * 4 + 3 +
					y * major->sl] = (unsigned char) color.o;
	}
}


double			len_vect(t_vec vec)
{
	return (sqrt(SQR(vec.x) + SQR(vec.y) + SQR(vec.z)));
}

t_vec			unit_vec(t_vec vec)
{
	t_vec		uv;
	double		len;

	len = len_vect(vec);
	uv.x = vec.x / len;
	uv.y = vec.y / len;
	uv.z = vec.z / len;
	return (uv);
}

void		unit_vector_rays(t_main *major, int count_r)
{
		major->ray[count_r].nv = unit_vec(major->ray[count_r].vec);
}

void		init_vector_ray(t_main *major, int x, int y, int count_r)
{
	major->ray[count_r].pos.x = x;
	major->ray[count_r].pos.y = y;
	unit_vector_rays(major, count_r);
}

void		init_major(t_main *major)
{
	major->count_con = 0;
	major->count_cyl = 0;
	major->count_ray = 0;
	major->count_sph = 0;
	major->count_pl = 0;
}

t_vec		margin_vectors(t_vec vec1, t_vec vec2)
{
	t_vec	diff;

	diff.x = vec1.x - vec2.x;
	diff.y = vec1.y - vec2.y;
	diff.z = vec1.z - vec2.z;
	return (diff);
}

double 		dot_product(t_vec t_vec1, t_vec t_vec2)
{
	return (t_vec1.x * t_vec2.x + t_vec1.y * t_vec2.y + t_vec1.z * t_vec2.z);
}

///////////////////////////////////////////////////////////////////////

void		find_equasion_plane(t_main *major, int count_p)
{
	major->plane[count_p].eqn.x = major->plane->normv.x;
	major->plane[count_p].eqn.y = major->plane->normv.y;
	major->plane[count_p].eqn.z = major->plane->normv.z;
	major->plane[count_p].p = -1 * major->plane[count_p].pos.x * major->plane[count_p].normv.x
			+ -1 * major->plane[count_p].pos.y * major->plane[count_p].normv.y +
				-1 * major->plane[count_p].pos.z * major->plane[count_p].normv.z;
}

double 		check_intersection_plane(t_main *major, int count_p)
{
	double 	d;
	double 	numerator;
	double	denominator;

	numerator = dot_product(margin_vectors(major->plane[count_p].pos, major->ray[count_p].pos), major->plane[count_p].nv);
	denominator = dot_product(major->ray[count_p].nv, major->plane[count_p].nv);
	d = numerator / denominator;
	printf("d = %f\t", d);
	if (denominator == 0 || (d > major->ray[count_p].t || d < -1 * major->ray[count_p].t))
		return (0);
	else
		return (1);
}

void 		check_intersection(t_main *major, int count_r, int count_sph, int i, int j)
{
	/*
	** сделать void, т.к эта функция будет использоваться для всех фигур и если
	** есть пересечение- будет закрашиваться тот пиксель в соответствующий цвет
	*/
	double	dis;
	double  d1;
	double	d2;
	double	b;
	double	c;

	t_vec margin = margin_vectors(major->ray[count_r].pos, major->sph[count_sph].cent);
//	printf("%f %f %f\t", margin.x, margin.y, margin.z);
	b = 2 * (dot_product(major->ray[count_r].nv, margin));
//	printf("%f\t", dot_product(major->ray[count_r].vec, major->ray[count_r].vec));
	c = dot_product(margin, margin) - SQR(major->sph[count_sph].r);
	dis = SQR(b) - 4 * c;
//	printf("b =%f c =%f\t", b, c);
//	printf("DIS = %f\t", dis);
	if (dis > 0)
	{
		d1 = (-b + sqrt(dis)) / 2;
		d2 = (-b - sqrt(dis)) / 2;
		if (d1 < d2)
		{
			ft_put_pixel(major, i, j, major->sph[count_sph].rgbo);
//			printf("d1 = %f\t", d1);
//			return (d1);
		}
		else {
			ft_put_pixel(major, i, j, major->sph[count_sph].rgbo);
//			printf("d2 = %f\t", d2);
//			return (d2);
		}
	}
	else if (dis == 0)
		ft_put_pixel(major, i, j, major->sph[count_sph].rgbo);
//		return (-b / 2);
//	printf("NONE\t");
}

void		intersections(t_main *major)
{
	int 	cont_r;
	int 	cont_p;
	int 	cont_sph;
	int 	i;
	int 	j;

	j = -1;
	while (++j < H)
	{
		i = -1;
		while (++i < W)
		{
			cont_r = -1;
			while (++cont_r < major->count_ray)
			{
				init_vector_ray(major, i, j, cont_r);
				cont_p = -1;
				cont_sph = -1;
				while (++cont_p < major->count_pl)
					if (check_intersection_plane(major, cont_p))
						ft_put_pixel(major, i, j, major->plane[cont_p].rgbo);
				while (++cont_sph < major->count_sph)
					check_intersection(major, cont_r, cont_sph, i, j);
			}
		}
		printf("\n");
	}
}

void		loop_point(t_main *major)
{
	mlx_hook(major->win, 17, 0, &exit_win, major);
	mlx_loop(major->mlx);
}

/*
** Заметки юного программиста: 0) В любой непонятной ситуации- принти информацию, с которой работаешь
*/

int main(int argc, char **argv)
{
	t_main	*major;

	major = (t_main *)malloc(sizeof(t_main));
	major->mlx = mlx_init();
	major->win = mlx_new_window(major->mlx, W, H, "RTv1");
	major->img = mlx_new_image(major->mlx, W, H);
	major->addr = mlx_get_data_addr(major->img, &major->bpp, &major->sl, &major->endian);
	printf("%s\t %s\n", argv[0], argv[1]);
	init_major(major);
	if (core_point_check(argc,argv, major) == 0)
	{
		perror("Error");
		return (-1);
	}
	find_equasion_plane(major, 0);
	intersections(major);

	mlx_put_image_to_window(major->mlx, major->win, major->img, 0, 0);
	loop_point(major);
//	printf("%f %f %f\n", test.x, test.y,test.z);


	return 0;
}