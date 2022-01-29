x_size = image_xscale;
y_size = image_yscale;

current_x = obj_player.x; 
current_y = obj_player.y;
cooldown = 0;

global.enemy_damage = 1;

damaged = false;
time = 0;

//shoot options
shoot_spd_min = seconds(1);
shoot_spd_max = seconds(5);
cooltime = random_range(shoot_spd_min, shoot_spd_max);
//end

//particle
//trail part
particle_system = part_system_create_layer("Particle_Layer", 0);
particle_trail = part_type_create();
part_type_sprite(particle_trail, spr_trail_dust, 0, 0, 0);
part_type_life(particle_trail, 64, 128);
part_type_alpha3(particle_trail, 1, 0.5, 0);
part_type_size(particle_trail, 1, 5, 0, 0);



//death part
particle_system2 = part_system_create_layer("Particle_Layer", 0);
particle_death = part_type_create();
part_type_sprite(particle_death, spr_dust, 0, 0, 0);
part_type_life(particle_death, 32, 64);
part_type_alpha3(particle_death, 1, 0.5, 0);
part_type_size(particle_death, 2, 3, 0, 0);

alarm[0] = 700;
alarm[1] = 7;
//end

dead = false;
hp = 5;
spd = 0;