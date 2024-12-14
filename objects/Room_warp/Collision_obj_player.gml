/// @description Insert description here
// You can write your code in this editor

if ( !self.isLocked ) 
{ 

	// not locked transistion 
	if(!instance_exists(o_transition))
	{
		var inst = instance_create_layer(x,y,"Instances", o_transition) 
		inst.target_room = targetRoom
		inst.targetX = targetX
		inst.targetY = targetY
	}
}
else if ( obj_controller.key_count >= key_limit) 
{
	
	
	obj_controller.key_count = 0; 
	notified = true
	
	if(!instance_exists(o_transition))
	{
		var inst = instance_create_layer(x,y,"Instances", o_transition) 
		inst.target_room = targetRoom
		inst.targetX = targetX
		inst.targetY = targetY 
	}
}
else if ( !notified) 
{
	
	instance_create_depth(x,y,0, obj_need_key_dialog)
	notified = true
}