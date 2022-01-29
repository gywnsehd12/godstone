x_size = image_xscale;
y_size = image_yscale;

image_speed = 0;

cooldown = obj_player.cooldown;
time = 0;

//particle
particle_system = part_system_create_layer("Particle_Layer", 0);
particle_trail = part_type_create();
part_type_sprite(particle_trail, spr_void, 0, 0, 0);
part_type_life(particle_trail, 128, 256);
part_type_alpha3(particle_trail, 1, 0.5, 0);
part_type_size(particle_trail, 0.5, 2, 0, 0);
part_type_speed(particle_trail, 0.05, 0.1, 0, 0);
alarm[0] = 1;
alarm[1] = 1;
//end