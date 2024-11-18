// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DialogueObj() constructor 
{
	dialogs = ds_list_create()
	
	// Add struct to the list 
	addDialog = function (mySpr, msg)
	{
		ds_list_add(dialogs, { 
			npc_img: mySpr , 
			npc_msg: msg
			} )
	}
	
	// pop from the list
	popDialog = function()
	{
		var first_element = ds_list_find_value(dialogs, 0);
		ds_list_delete(dialogs, 0)
		
		return first_element; 
	}
	
	// get size of dialog
	count = function() 
	{
		var size = ds_list_size(dialogs)
		return size; 
	}
	
}