/// @description Insert description here
// You can write your code in this editor


// check if switch is on stop it at 6 otherwise stop at 0 
if (self.isOn && image_index == 5)
{
	image_speed = 0
	self.isAttacking = true; 
	
		
	
}
else if(self.isOn == false && image_index == 0 )
{
	image_speed = 0; 
	self.isAttacking = false;
		if (distance_to_object(obj_player) < 300 && oneShot)
		{
			audio_play_sound( sfx_spike,1, false)
		} 
	oneShot = false
}



