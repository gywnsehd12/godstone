image_angle += 0.1;

light.image_alpha = image_alpha;
light.image_angle = image_angle;
light.x = x;
light.y = y;

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
	obj_controller.game_score += 10;
}
if(dead)
{
	part_type_speed(part_death, 2, 5, 0, 0);
	part_type_direction(part_death, random(360), random(360), 0, 0);
	part_particles_create(part_system2, x, y, part_death, 1);
	mask_index = spr_empty;
	image_alpha -= 0.01;
	if(speed > 0) speed -= speed / 50;
	if(image_alpha <= 0) 
	{
		for(i = 0; i <= random_range(1, 3); i ++) instance_create_layer(x, y, "Items_Layer", obj_item_energy_spawn);
		for(i = 0; i <= random_range(1, 3); i ++) instance_create_layer(x, y, "Items_Layer", obj_item_hp_spawn);
		instance_destroy();
		instance_destroy(light);
	}
}
//end

//particle
part_system_depth(light.p_system1, depth - 1);
part_system_depth(light.p_system2, depth - 1);

//end

alarm[1] = 500;
alarm[2] = 5;