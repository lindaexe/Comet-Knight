/// @description Insert description here
// You can write your code in this editor

if (showDialog == false)
{
	if (dialog.count() <=0 )
	{
		obj_boss.isAttacking = false;
		obj_player.can_move = true; 
		
		instance_destroy(self)
		return; 
	}
	obj_player.can_move = false; 
	current_Dialog = dialog.popDialog(); 
	showDialog = true; 
} 
else
{
	if (keyboard_check_released(currKey))
	{
		showDialog = false
		alpha = 0; 
	}
}