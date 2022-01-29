function seconds(sec)
{
	return global.spd * sec;
}

function chance(num)
{
	show_debug_message("nani");
	
	var rand_int = floor(random_range(1, 100));
	if(rand_int <= num) 
	{
		return true;
	}
}