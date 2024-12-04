/// @description Insert description here
// You can write your code in this editord
if(wasHit)
{ 
	if(image_index == 2)
	{
		image_speed = -1 
		image_index--; 
	}
	else if(image_index == 0)
	{
		image_speed = 1
		image_index++; 
	}
	
	audio_play_sound(1,sfx_switch_hit,false)
	alarm[0] = delay *  game_get_speed( gamespeed_fps)
	wasHit = false
} 