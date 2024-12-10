/// @description Insert description here
// You can write your code in this editor

// create player
if(    instance_exists(obj_player) == false && triggerOnce && active)
{
	var p = instance_create_layer(x,y,"Instances",obj_player)
	health = 100; 
	triggerOnce = false; 
}