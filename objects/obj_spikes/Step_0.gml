/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor
if (!inState)
{ 
	if (image_index == 0 )
	{
		// wait 2 seconds 
		alarm[0] = waitDelay * game_get_speed(gamespeed_fps)
		inState = true
		image_speed = 0; 
		isOn = false; 
		if (distance_to_object(obj_player) < 300)
		{
			audio_play_sound( sfx_spike,1, false)
		} 
	}
	else if (image_index == 5)
	{
		// wait 2 seconds
		alarm[0] = attackDelay * game_get_speed(gamespeed_fps) 
		inState = true
		isAttacking = true; 
		isOn = true; 
		image_speed = 0 
		if (distance_to_object(obj_player) < 300)
		{
			audio_play_sound( sfx_spike,1, false)
		} 
	}
	
} 