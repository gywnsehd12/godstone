//write high score
if(game_score > high_score)
{
	ini_open(file);
	ini_write_real("info", "high_score", game_score);	
	ini_close();
	
	high_score = game_score;
}