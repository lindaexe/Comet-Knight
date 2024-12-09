/// @description Insert description here
// You can write your code in this editor

if (distance_to_object(obj_player) < distance && !oneShot)
{
	// make sure to turn off spikes 
	with(obj_spikes_switch_lvl2_Round_Alt)
	{
		isOn = false
	}
	with(obj_spikes_switch_lvl2)
	{
		if(switchFind == 1){ 
			instance_destroy()
		} 
		
	}
	oneShot = true
}