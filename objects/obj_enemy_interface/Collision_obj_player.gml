/// @description Insert description here
// You can write your code in this editor


if (self.hasHit)
{
	health -= 20
	show_debug_message("player hit")
	self.hasHit = false; 
}
else
{
	alarm[0] = delay * game_get_speed( gamespeed_fps) 
}