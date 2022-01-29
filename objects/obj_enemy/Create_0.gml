x_size = image_xscale;
y_size = image_yscale;

current_x = obj_player.x; 
current_y = obj_player.y;
cooldown = 0;

global.enemy_damage = 1;

damaged = false;
time = 0;

//shoot options
shoot_spd_min = 100;
shoot_spd_max = 300;
cooltime = random_range(shoot_spd_min, shoot_spd_max);
//end

//particle
//trail part
particle_system = part_system_create_layer("Particle_Layer", 0);
particle_trail = part_type_create();
part_type_sprite(particle_trail, spr_flame, 0, 0, 0);
part_type_life(particle_trail, 48, 72);
part_type_alpha3(particle_trail, 1, 0.5, 0);
part_type_size(particle_trail, 2, 3, 0, 0);



//death part
particle_system2 = part_system_create_layer("Particle_Layer", 0);
particle_death = part_type_create();
part_type_sprite(particle_death, spr_flame, 0, 0, 0);
part_type_life(particle_death, 32, 64);
part_type_alpha3(particle_death, 1, 0.5, 0);
part_type_size(particle_death, 3, 5, 0, 0);

alarm[0] = 500;
alarm[1] = 5;
//end

dead = false;
hp = 3;
spd = 0;