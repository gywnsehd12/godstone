//이동

//if(keyboard_check(ord("W"))) y = y - 4;
//if(keyboard_check(ord("S"))) y = y + 4;

if(keyboard_check(ord("A"))) x = x - 4;
if(keyboard_check(ord("D"))) x = x + 4;

//reverse player image by point direction
var point_dir = point_direction(x, y, mouse_x, mouse_y);

direction = point_dir;

if(point_dir > 90 && point_dir < 270) image_yscale = -y_size;
if(point_dir <= 90 || point_dir >= 270) image_yscale = y_size;

image_angle=point_dir;

if(keyboard_check(vk_space)) 
{
	if(boost > -spd_max) boost -= spd;
}
else 
{
	if(boost < grv_max) boost += grv;
}


y += boost;
