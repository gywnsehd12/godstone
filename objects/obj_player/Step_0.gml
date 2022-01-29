//movement
if(keyboard_check(ord("A"))) 
{
	if(image_angle < 30) image_angle += ((30 - image_angle) / 2) / 20;
	x = x - 4;
}
else
{
	if(image_angle > 0)
	{
		image_angle -= lerp(image_angle, 0, 0.5)/20;
	}
}

if(keyboard_check(ord("D"))) 
{
	if(image_angle > -30) image_angle -= lerp(image_angle, 30, 0.5)/20;
	x = x + 4;
}
else
{
	if(image_angle < 0)
	{
		image_angle += -lerp(image_angle, 0, 0.5)/20;
	}
}
//end

//reverse player image by point direction

var point_dir = point_direction(x, y, mouse_x, mouse_y);
direction = point_dir;
if(point_dir > 90 && point_dir < 270) image_xscale = -x_size;
if(point_dir <= 90 || point_dir >= 270) image_xscale = x_size;


//if(point_dir > 90 && point_dir < 270) image_yscale = -y_size;
//if(point_dir <= 90 || point_dir >= 270) image_yscale = y_size;
//image_angle = point_dir;

//end

//fly
if(keyboard_check(vk_space)) 
{
	if(boost > -spd_max) boost -= spd;
}
else 
{
	if(boost < grv_max) boost += grv;
}

y += boost;
//end

//shoot
if(mouse_check_button(mb_left) && (cooldown <= 0) && !skill_on)
{	
	obj_barrel.image_index = 1;
	var bullet_x = x + lengthdir_x(128, obj_barrel.image_angle);
	var bullet_y = y + lengthdir_y(128, obj_barrel.image_angle);
	
	instance_create_layer(bullet_x, bullet_y, "Bullet_Layer", obj_bullet_default);
	cooldown = shoot_spd;
}
if(cooldown <= shoot_spd - 4) obj_barrel.image_index = 0;
//end

//depth
if(instance_exists(obj_sun)) depth = obj_sun.depth + 1;
if(instance_exists(obj_sun_spawn)) depth = obj_sun_spawn.depth + 1;
//end


if(shoot_spd > 24) shoot_spd = global.shoot_spd - obj_controller.game_score / 5;
else shoot_spd = 24;

//charge
if(keyboard_check(vk_shift))
{
	if(mouse_check_button(mb_left)) 
	{
		charged = 0;
		charge = 0;
	}

	if(energy > 0 && charge < seconds(skill_charging_time) && !mouse_check_button(mb_left)) charge ++;

	if(charge >= seconds(skill_charging_time) && !mouse_check_button(mb_left) && charged < global.max_charge && energy > 0)
	{
		charge = 0;
		charged ++;
	}
}
if(charged > energy) charged = energy;

if(energy < 100) global.max_charge = 3;
if(energy >= 100) global.max_charge = 5;
if(energy >= 200) global.max_charge = 7;
if(energy >= 300) global.max_charge = 10;

//skill cast
var temp_shoot = global.shoot_spd;
if(skill_on && cooldown <= 0 && energy > 0)
{
	charged --;
	energy --;
	
	shoot_spd = temp_shoot / 3;
	
	obj_barrel.image_index = 1;
	var bullet_x = x + lengthdir_x(128, obj_barrel.image_angle);
	var bullet_y = y + lengthdir_y(128, obj_barrel.image_angle);
	
	var temp = global.r_angle;
	global.r_angle = 24;
	
	//actual shoot
	for(j = 0; j < random_range(5, 15); j ++) instance_create_layer(bullet_x, bullet_y, "Bullet_Layer", obj_bullet_default);
	
	global.r_angle = temp;
	cooldown = shoot_spd;
	
	if(charged <= 0)
	{
		skill_on = false;
		skill_count = 0;
		shoot_spd = temp_shoot;
	}
}
else if(energy <= 0)
{
	skill_on = false;
	skill_count = 0;
	shoot_spd = temp_shoot;
}

if(cooldown <= shoot_spd - 4) obj_barrel.image_index = 0;

cooldown -= 1;
//end

//collision
if(damaged)
{
	image_alpha = 0.01
	time ++;
	if(time >= 10)
	{
		time = 0;
		damaged = false;
	}
}
if(image_alpha < 1) image_alpha += 0.1;
//end

//death
if(hp <= 0) room_goto(0);