/// @description Insert description here
// You can write your code in this editor

// Use end step to react logic that happen on step event

image_xscale = 2; 
image_yscale = 2 ; 

switch (self.animation_state)
{
	case 0: 
		// idle
		image_speed= 0.0; 
		switch(facing)
		{
			case 1: 
				// up
				sprite_index = spr_player_up
				image_speed = 0; 
			break; 
			case 2: 
				// right
				sprite_index = spr_player_right
				image_speed = 0; 
			break; 
			case 3: 
				// down
				sprite_index = spr_player_down
				image_speed = 0; 
			break ; 
			case 4: 
				// left
				sprite_index = spr_player_left
				image_speed = 0; 
			break;
		}
	break; 
	case 1: 
		// up
		sprite_index = spr_player_up
		image_speed = animation_speed; 
	break; 
	case 2: 
		// right
		sprite_index = spr_player_right
		image_speed = animation_speed; 
	break; 
	case 3: 
		// down
		sprite_index = spr_player_down
		image_speed = animation_speed; 
	break ; 
	case 4: 
		// left
		sprite_index = spr_player_left
		image_speed = animation_speed; 
    break;
	case 5: // UP
         sprite_index = spr_player_attack_up
         image_speed = animation_speed
    break;
    case 6: // RIGHT
         sprite_index = spr_player_attack_right
         image_speed = animation_speed
    break;
    case 7: // DOWN
         sprite_index = spr_player_attack_down
         image_speed = animation_speed
     break;
     case 8: // LEFT
         sprite_index = spr_player_attack_left
         image_speed = animation_speed
     break;
		 
}