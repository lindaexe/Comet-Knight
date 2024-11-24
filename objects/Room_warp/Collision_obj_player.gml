/// @description Insert description here
// You can write your code in this editor

if ( !self.isLocked ) 
{ 
	
	other.x = targetX
	other.y = targetY 
	show_debug_message(targetRoom)
	room_goto(targetRoom)
}
else if ( obj_controller.key_count >= key_limit) 
{
	
	other.x = targetX
	other.y = targetY 
	show_debug_message(targetRoom)
	room_goto(targetRoom)
}
else if ( !notified) 
{
	
	instance_create_depth(x,y,0, obj_need_key_dialog)
	notified = true
}