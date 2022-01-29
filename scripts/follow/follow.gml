function follow(target_x, target_y, speed)
{
	x = lerp(x, target_x, speed / 100);
	y = lerp(y, target_y, speed / 100);
}