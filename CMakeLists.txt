cmake_minimum_required(VERSION 3.6)
project(RTv1)

set(CMAKE_C99_STANDARD)
include_directories(inc libft/includes minilibx)
link_directories(libft minilibx)
set(SOURCE_FILES main.c init_file.c get_next_line.c get_next_line.h main.c parse.c alloc_init_sphere.c alloc_ray.c alloc_cone.c alloc_plane.c alloc_cyl.c)

add_executable(RTv1 ${SOURCE_FILES} alloc_init_sphere.c alloc_ray.c alloc_cone.c alloc_plane.c alloc_cyl.c)
target_link_libraries(RTv1 libft.a libmlx.a "-framework OpenGL" "-framework AppKit")