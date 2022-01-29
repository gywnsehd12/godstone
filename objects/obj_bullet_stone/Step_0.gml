time ++;

if(time >= seconds(5)) 
{
	instance_create_layer(x, y, layer, obj_destroy);
	instance_destroy();
}

//head to player
if(point_distance(x, y, obj_player.x, obj_player.y) <= 320) direction = point_direction(x, y, obj_player.x, obj_player.y);
image_angle += 5;


//collision
if(!dead && damaged)
{
	image_alpha = 0.01
	time ++;
	if(time >= 10)
	{
		time = 0;
		damaged = false;
	}
}
if(!dead && image_alpha < 1) image_alpha += 0.1;
//end


//death
if(!dead && hp <= 0) 
{
	dead = true;
	//restore original alpha value
	image_alpha = 1;
}

if(dead)
{
	instance_create_layer(x, y, "Effects_Layer", obj_destroy);
	instance_destroy();
}