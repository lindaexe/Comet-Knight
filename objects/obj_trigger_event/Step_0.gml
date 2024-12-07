/// @description Insert description here
// You can write your code in this editor

if (distance_to_object(obj_player) < distance && !oneShot)
{
	instance_create_layer(x,y,"collision_layer", inst_type)
	oneShot = true
}