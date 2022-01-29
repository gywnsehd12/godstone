time = 0;

//motion
speed = 8;
direction = point_direction(x, y, obj_player.x, obj_player.y);
direction += random_range(-4, 4);
image_angle = direction;

//particle
particle_system = part_system_create_layer("Particle_Layer", 0);
particle_trail = part_type_create();
part_type_sprite(particle_trail, spr_trail_flame, 0, 0, 0);
part_type_life(particle_trail, 32, 32);
part_type_alpha3(particle_trail, 1, 0.5, 0);
part_type_size(particle_trail, 1, 5, 0, 0)
alarm[0] = 500;
alarm[1] = 5;