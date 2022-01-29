if(target == obj_cursor)
{
	x_to = obj_player.x + (obj_cursor.x - x) * sight_range;
	y_to = obj_player.y + (obj_cursor.y - y) * sight_range;
}
else if(target != noone)
{
	x_to = target.x;
	y_to = target.y;
}

x += (x_to - x) / 25;
y += (y_to - y) / 25;

if(foll != noone)
{
	x_to = foll.x;
	y_to = foll.y;
}

if(mouse_check_button(mb_right)) target = obj_cursor;
if(mouse_check_button_released(mb_right)) target = obj_player;

//this code keeps camera inside map

//x = clamp(x, camera_x/2, room_width - camera_x/2);
//y = clamp(y, camera_y/2, room_height - camera_y/2);


var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
camera_set_view_mat(camera, vm);