x = obj_player.x;
y = obj_player.y;

var point_dir = point_direction(x, y, mouse_x, mouse_y);
if(point_dir > 90 && point_dir < 270) image_yscale = -y_size;
if(point_dir <= 90 || point_dir >= 270) image_yscale = y_size;
direction = point_dir;
image_angle = point_dir;

depth = obj_player.depth - 1;

part_type_direction(particle_trail, random(360), random(360), 0, 0);

