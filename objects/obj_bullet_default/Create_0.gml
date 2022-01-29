//motion
time = 0;

speed = 24;
direction = obj_barrel.direction;
direction += random_range(-global.r_angle, global.r_angle);
image_angle = direction;

//particle
particle_system = part_system_create_layer("Particle_Layer", 0);
particle_trail = part_type_create();
part_type_sprite(particle_trail, spr_trail_bullet, 0, 0, 0);
part_type_life(particle_trail, 16, 16);
part_type_alpha3(particle_trail, 1, 0.5, 0);
part_type_size(particle_trail, 1, 3, 0, 0)
alarm[0] = 100;
alarm[1] = 1;