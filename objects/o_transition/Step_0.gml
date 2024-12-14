/// @description Insert description here
// You can write your code in this editor

switch (state)
{
	case states.OUT: 
	if(sub_image_index < imax + xmax)
	{ 
		sub_image_index += sub_image_index_inc; 
	} 
	else
	{
		state = states.IN	
		if( room_exists(target_room))
		{	
			
			room_goto(target_room)
			obj_player.x = targetX 
			obj_player.y = targetY 
		}
	}
	break ; 
	case states.IN: 
	
	if(sub_image_index > 0 )
	{ 
		sub_image_index -= sub_image_index_inc; 
	} 
	else
	{
		instance_destroy(self)
	}
	
	break ; 
}


	