/// @description Insert description here
// You can write your code in this editor

var currRoom = room; 

if (currRoom == Tutorial && key_count == 1 && hasTriggered)
{
	instance_create_depth(self.x,self.y,0, obj_keys_collected_dialog)
	hasTriggered = false
}

// player got hit atleast once tell them to get health from eating fruit ! 
if (currRoom == Tutorial && health != 100 && triggerHealthTut)
{
	triggerHealthTut = false
	instance_create_depth(self.x,self.y,0, obj_health_dialog)
}