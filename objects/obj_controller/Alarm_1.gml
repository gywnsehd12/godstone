if(!instance_exists(obj_sun) && !instance_exists(obj_sun_spawn))
{
	if(chance(sun_spawn_chance)) instance_create_layer(obj_player.x + random_range(-room_width * 2, room_width * 2), obj_player.y + random_range(-room_height * 2, room_height * 2), "Higher_Layer", obj_sun_spawn);
}

if(chance(stone_spawn_chance)) instance_create_layer(obj_player.x + random_range(-room_width * 2, room_width * 2), obj_player.y + random_range(-room_height * 2, room_height * 2), "Higher_Layer", obj_stone_spawn);

if(chance(energy_spawn_chance)) instance_create_layer(obj_player.x + random_range(-room_width * 2, room_width * 2), obj_player.y + random_range(-room_height * 2, room_height * 2), "Higher_Layer", obj_energy_spawn);

stone_spawn_chance = global.stone_chance + game_score / 30;
sun_spawn_chance = global.sun_chance + game_score / 30;
energy_spawn_chance = global.energy_chance + game_score / 30;

alarm_set(1, seconds(1));