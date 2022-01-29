//trail part
p_system1 = part_system_create_layer("Particle_Layer", 0);
p_trail1 = part_type_create();
part_type_sprite(p_trail1, spr_trail_flame, 0, 0, 0);
part_type_life(p_trail1, 1024, 2048);
part_type_alpha3(p_trail1, 1, 0.5, 0);
part_type_size(p_trail1, 3, 5, 0, 0);

//trail part2
p_system2 = part_system_create_layer("Particle_Layer", 0);
p_trail2 = part_type_create();
part_type_sprite(p_trail2, spr_flame, 0, 0, 0);
part_type_life(p_trail2, 64, 128);
part_type_alpha3(p_trail2, 1, 0.5, 0);
part_type_size(p_trail2, 5, 10, 0, 0);


alarm[0] = 500;
alarm[1] = 5;