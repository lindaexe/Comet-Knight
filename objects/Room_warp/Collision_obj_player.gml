/// @description Insert description here
// You can write your code in this editor

if ( !self.isLocked ) 
{ 
	other.x = targetX
	other.y = targetY 
	show_debug_message(targetRoom)
	room_goto(targetRoom)
}
else if ( obj_controller.key_count == 2) 
{
	other.x = targetX
	other.y = targetY 
	show_debug_message(targetRoom)
	room_goto(targetRoom)
}