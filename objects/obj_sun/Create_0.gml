light = instance_create_layer(x, y, layer, obj_sunlight);

spawn_rate_min = seconds(3);
spawn_rate_max = seconds(15);
alarm[0] = random_range(spawn_rate_min, spawn_rate_max);

hp = 50;

dead = false;
damaged = false;
time = 0;

//death part
part_system2 = part_system_create_layer("Particle_Layer", 0);
part_death = part_type_create();
part_type_sprite(part_death, spr_flame, 0, 0, 0);
part_type_life(part_death, 128, 256);
part_type_alpha3(part_death, 1, 0.5, 0);
part_type_size(part_death, 5, 10, 0, 0);
//end