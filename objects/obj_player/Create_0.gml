x_size = image_xscale;
y_size = image_yscale;

hp = 5;
energy = 10;

global.player_damage = 1;
damaged = false;

boost = 0;
grv = 0.05;
spd = 0.1;
grv_max = 5;
spd_max = 5;

time = 0;

//particle
particle_system = part_system_create_layer("Higher_Layer", 0);
particle_trail = part_type_create();
part_type_sprite(particle_trail, spr_flame, 0, 0, 0);
part_type_life(particle_trail, 32, 32);
part_type_alpha3(particle_trail, 1, 1, 0);
part_type_size(particle_trail, 2, 3, -0.05, 0);

part_type_speed(particle_trail, 2, 3, 0, 0);
part_type_direction(particle_trail, 270, 270, 0, 0);

part_system_depth(particle_trail, depth + 1);

alarm[0] = 500;
alarm[1] = 5;
//end

//shoot options
cooldown = 0;
shoot_spd = 48;
global.shoot_spd = shoot_spd;

global.max_charge = 3;

charge = 0;
skill_charging_time = 0.3;
skill_on = false;
charged = 0;
skill_count = 0;

image_speed = 0;
image_index = 0;

global.r_angle = 5;