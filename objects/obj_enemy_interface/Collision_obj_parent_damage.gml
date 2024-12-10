/// @description Insert description here
// You can write your code in this editor
if(self.isObstacle == false || object_index == obj_thorn.object_index)
{ 
	self.hitPoints -= other.damage; 
	if (destroy_sound != noone)
	{ 
		audio_play_sound(destroy_sound,1, false)
	} 
} 