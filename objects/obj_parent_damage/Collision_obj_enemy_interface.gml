/// @description Insert description here
// You can write your code in this editor

// shitty code but whatever
if ( self != obj_sword_projectile) 
{ 

	if ( other.object_index == obj_turret_bullet ||
	other.object_index == obj_spikes_switch ||
	other.object_index == obj_spikes || 
	other.object_index == obj_spike || 
	other.object_index == obj_slime) 
	{
	} 
	else 
	{
		instance_destroy(self)
	}
} 