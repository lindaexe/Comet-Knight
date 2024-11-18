/// @description Insert description here
// You can write your code in this editor


if (showDialog == false)
{
	if (dialog.count() <=0 )
	{
		instance_destroy(self)
		obj_player.can_move = true
		return; 
	}
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