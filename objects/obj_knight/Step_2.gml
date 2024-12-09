/// @description Insert description here
// You can write your code in this editor
switch (self.facing)
{
	case ENEMY_FACE.UP:
	sprite_index = spr_knight_shield_up
	break; 
	case ENEMY_FACE.DOWN :
	sprite_index = spr_knight_shield_down
	break ; 
	case ENEMY_FACE.LEFT:
	sprite_index = spr_knight_shield_left
	break ; 
	case ENEMY_FACE.RIGHT:
	sprite_index = spr_knight_shield_right
	break; 
}


// dead 
	if(self.hitPoints <= 0)
	{
		instance_destroy(self)
		instance_create_layer(x,y,"Instances", obj_knight_death)
	}