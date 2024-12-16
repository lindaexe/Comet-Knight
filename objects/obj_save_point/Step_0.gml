/// @description Check if player is dead and spawn them
// create player
if(    instance_exists(obj_player) == false && triggerOnce && active)
{
	
	// alarm it 
	alarm[0] = delay * game_get_speed(  gamespeed_fps) 
	
	triggerOnce = false; 
}