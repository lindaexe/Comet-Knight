/// @description Insert description here
// You can write your code in this editor

show_debug_message("checkpoint reached")

ini_open("checkpoint.ini")
ini_write_real("player", "x", other.x)
ini_write_real("player", "y", other.y)
ini_write_real("player", "hp", 100)
ini_write_real("player", "score", 0)

// now save player items 

var list = obj_controller.players_weapons; 
ini_write_real("list_info", "size", ds_list_size(list)); // save the list 
for(var i =0; i < ds_list_size(list); i++)
{
	ini_write_real("list_data", string(i), ds_list_find_value(list,i)) // save element
}

ini_close()

active = true 

with(obj_save_point)
{
	if(self != other)
	{
		active = false; 
	}
}