time = 0;

//motion
speed = 3;
direction = point_direction(x, y, obj_player.x, obj_player.y);
direction += random_range(-4, 4);
image_angle = direction;

//particle
particle_system = part_system_create_layer("Particle_Layer", 0);
particle_trail = part_type_create();
part_type_sprite(particle_trail, spr_trail_dust, 0, 0, 0);
part_type_life(particle_trail, 64, 128);
part_type_alpha3(particle_trail, 1, 0.5, 0);
part_type_size(particle_trail, 2, 3, 0, 0)
alarm[0] = 2000;
alarm[1] = 20;

damaged = false;
hp = 3;
dead = false;

time = 0;