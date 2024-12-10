
// When room starts check if this file exists. If so that means load this checkpoint and data! 

if (file_exists("checkpoint.ini") && health <= 0)
{
	ini_open("checkpoint.ini")
	x = ini_read_real("player", "x", x)
	y = ini_read_real("player", "y", y)
	health = ini_read_real("player", "hp", health)
	score=  ini_read_real("player", "score", score); 
	var oldList = ds_list_create(); 
	var size = ini_read_real("list_info", "size", 0) // get list size
	
	for( var i =0; i < size ; i++)
	{
		var value = ini_read_real("list_data", string(i), -1); // get element otherwise blank
		ds_list_add(oldList,value)
	}
	
	obj_controller.players_weapons = oldList; 
	
	ini_close()
}