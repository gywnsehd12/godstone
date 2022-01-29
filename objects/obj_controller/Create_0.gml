global.spd = 144;
room_speed = global.spd;
global.game_width = 1600;
global.game_height = 900;

instance_create_layer(room_width / 2, room_height / 2, "Higher_Layer", obj_player);
instance_create_layer(room_width / 2, room_height / 2, "Effects_Layer", obj_barrel);
instance_create_layer(room_width / 2, room_height / 2, "Shadow_Layer", obj_player_shadow);

alarm[1] = seconds(1);

display_reset(8, false);

//spawn enemy
/*
spawn_rate = seconds(5);
alarm[0] = spawn_rate;
*/

//play music
if(!audio_is_playing(main_music)) audio_play_sound(main_music, 1, true);

game_score = 0;
high_score = 0;

sun_spawn_chance = 5;
stone_spawn_chance = 15;
energy_spawn_chance = 1;

global.sun_chance = sun_spawn_chance;
global.stone_chance = stone_spawn_chance;
global.energy_chance = energy_spawn_chance;

//init high score
file = "data.ini";
if(!file_exists(file))
{
	ini_open(file);
	
	if(!ini_key_exists("info", "high_score")) 
	{
		ini_write_real("info", "high_score", game_score);
	}
	
	ini_close();
}
else
{
	ini_open(file);
	
	if(ini_key_exists("info", "high_score"))
	{
		high_score = ini_read_real("info", "high_score", 0);	
	}
	
	ini_close();
}