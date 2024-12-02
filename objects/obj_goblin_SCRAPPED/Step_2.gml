/// @description Insert description here
// You can write your code in this editor


switch (face)
	{
		case FACING.RIGHT:
		sprite_index  = spr_goblin_right
		break; 
		case FACING.LEFT:
		sprite_index = spr_goblin_left
		break ; 
		case FACING.DOWN : 
		sprite_index = spr_goblin_down
		break; 
		case FACING.UP: 
		sprite_index = spr_goblin_up
		break; 
	}
	
	if(self.hitPoints <= 0)
	{
		instance_destroy(self)
	}