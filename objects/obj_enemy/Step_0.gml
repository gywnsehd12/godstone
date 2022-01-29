//reverse image
if(!dead)
{
	var point_dir = point_direction(x, y, obj_player.x, obj_player.y);
	if(point_dir > 90 && point_dir < 270) image_yscale = -y_size;
	if(point_dir <= 90 || point_dir >= 270) image_yscale = y_size;
	image_angle = point_dir;
}
//end

//trail particle
part_type_direction(particle_trail, random(360), random(360), 0, 0);
part_type_speed(particle_trail, 0.1, 1, 0, 0);
//end

//ai

//shoot
if(!dead && (cooltime <= 0))
{	
	instance_create_layer(x, y, "Bullet_Layer", obj_bullet_flame);
	cooltime = random_range(shoot_spd_min, shoot_spd_max);
}
cooltime -= 1;
//end

//move
if(!dead && instance_exists(obj_player))
{	
	var dis = point_distance(x, y, current_x, current_y);
	move_towards_point(current_x, current_y, spd/10 + dis / 100);
	
	if(cooldown <= 0 || point_distance(x, y, current_x, current_y) < 30) 
	{
		cooldown = random_range(0, global.spd * 3);
		
		current_x = obj_player.x + random_range(-500, 500);
		current_y = obj_player.y + random_range(-500, 500);
		spd = random_range(0, 3);
	}
}
cooldown --;
//end

//depth
if(instance_exists(obj_sun)) depth = obj_sun.depth + 1;
if(instance_exists(obj_sun_spawn)) depth = obj_sun_spawn.depth + 1;
//end



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
	obj_controller.game_score += 1;
}

if(dead)
{
	part_type_speed(particle_death, 0.5, 2, 0, 0);
	part_type_direction(particle_death, random(360), random(360), 0, 0);
	part_particles_create(particle_system2, x, y, particle_death, 1);
	mask_index = spr_empty;
	image_alpha -= 0.01;
	if(speed > 0) speed -= speed / 50;
	if(image_alpha <= 0) 
	{
		if(chance(15)) instance_create_layer(x, y, "Items_Layer", obj_item_energy_spawn);
		if(chance(15)) instance_create_layer(x, y, "Items_Layer", obj_item_hp_spawn);
		instance_destroy();
	}
}
//end