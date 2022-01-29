if(distance_to_object(obj_player) <= 128) follow(obj_player.x, obj_player.y, 5);

if(taken)
{
	if(image_xscale > 0)
	{
		image_xscale -= 0.05;
		image_yscale = image_xscale;
	}
	
	image_alpha -= 0.05;
	if(image_alpha <= 0)
	{
		obj_player.energy ++;
		instance_destroy();
	}
}

if(speed > 0) speed -= 0.03;