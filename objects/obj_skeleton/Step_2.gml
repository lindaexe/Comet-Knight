/// @description Insert description here
// You can write your code in this editor


switch (face)
	{
		case FACING.RIGHT:
		sprite_index  = spr_skeleton_right
		break; 
		case FACING.LEFT:
		sprite_index = spr_skeleton_left
		break ; 
		case FACING.DOWN : 
		sprite_index = spr_skeleton_down
		break; 
		case FACING.UP: 
		sprite_index = spr_skeleton_up
		break; 
	}
	
	if(self.hitPoints <= 0)
	{
		instance_destroy(self)
		instance_create_layer(x,y,"Instances", obj_skeleton_death)
		with( obj_round_spawner)
		{
			if (other.switchIndex == switchIndex) 
			{
				enemy_amount--; 
			}
		}
	}