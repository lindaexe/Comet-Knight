/// @description Insert description here
// You can write your code in this editor

// player alive so delete it
if(health > 0)
{
	if(file_exists("checkpoint.ini"))
	{
		file_delete("checkpoint.ini")
	}
}