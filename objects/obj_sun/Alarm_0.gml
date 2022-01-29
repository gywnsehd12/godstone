instance_create_layer(x + random_range(-256, 256), y + random_range(-256, 256), "Default_Layer", obj_enemy_spawn);

//if(spawn_rate > seconds(3)) spawn_rate -= seconds(1);

alarm[0] = random_range(spawn_rate_min, spawn_rate_max);;