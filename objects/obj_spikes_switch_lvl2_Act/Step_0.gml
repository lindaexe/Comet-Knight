/// @description Insert description here
// You can write your code in this editor


// check if switch is on stop it at 6 otherwise stop at 0 

if (place_meeting(x,y, obj_switch_activator) == false && image_index == 5  )
{
	image_speed = 0
	self.isAttacking = true; 
	oneShotSound = false
	
}
else if(place_meeting(x,y, obj_switch_activator) == true && image_index == 0)
{
	image_speed = 0; 
	self.isAttacking = false;
	oneShotSound = false
}
else
{
	// currently attack 
	if (self.isAttacking = true)
	{
		image_speed = 1 
	}
	else if (triggerNow)
	{
		alarm[0] = game_get_speed(gamespeed_fps) * delay
		triggerNow = false
	} 
	if ( distance_to_object(obj_player) < 100 )
	{ 
		if (!oneShotSound )
		{ 
			audio_play_sound( sfx_spike,1, false)
			oneShotSound = true; 
		}
	}
	

}

 



		
