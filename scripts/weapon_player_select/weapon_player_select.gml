// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function weapon_player_select( selection,sound)
{
	
	// check if selection is even allowed 
	var integer_value = real(selection); // Convert to an integer
	
	if( ds_list_size( obj_controller.players_weapons) != 0 && 
	ds_list_size( obj_controller.players_weapons) >= (integer_value ) )
	{
		var item = ds_list_find_value(obj_controller.players_weapons, (integer_value - 1) );
		switch(item)
		{
			case WEAPONS.SWORD:	
			obj_controller.weapon_selected = WEAPONS.SWORD
			if(sound)
			{
				audio_play_sound(sfx_equip_sword,1,false)	
			}
			break; 
			case WEAPONS.GUN:
			obj_controller.weapon_selected = WEAPONS.GUN
			break;
			case WEAPONS.MINE: 
			obj_controller.weapon_selected = WEAPONS.MINE
			if(sound)
			{
				audio_play_sound(sfx_bomb_equip,1,false)	
			}
			break; 
			
		}
	}
	else
	{
		show_debug_message("This weapon cannot be selected")
	} 
		
	
}