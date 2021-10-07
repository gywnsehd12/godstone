//reverse player image by point direction
var point_dir = point_direction(x, y, obj_player.x, obj_player.y);

direction = point_dir;

if(point_dir > 90 && point_dir < 270) image_yscale = -y_size;
if(point_dir <= 90 || point_dir >= 270) image_yscale = y_size;

image_angle = point_dir;
//end

//ai
if(instance_exists(obj_player))
{
	move_towards_point(obj_player.x, obj_player.y, spd);
}

image_angle = direction;
//end

//hit
if(hp <= 0) instance_destroy();
//end