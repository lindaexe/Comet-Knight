/// @description Insert description here
// You can write your code in this editor


// if false pop dialog to get the next one from the list if no more destroy the instance 
if (showDialog == false)
{
	if (dialog.count() <=0 )
	{
		instance_destroy(self)
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