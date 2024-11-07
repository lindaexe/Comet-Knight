/// @description Insert description here
// You can write your code in this editor

// Use end step to react logic that happen on step event

image_xscale =self.x_Scale; 
image_yscale = self.y_Scale; 

switch (self.animation_state)
{
	case 0: 
		// idle
		image_speed= 0.0; 
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
	break ; 
	case 3: 
		// down
		sprite_index = spr_player_down
		image_speed = animation_speed; 
	break ; 
	case 4: 
		// left
		sprite_index = spr_player_left
		image_speed = animation_speed; 
	break ; 
}

// creating our own viewport 
#region

//halfViewWidth = camera_get_view_width(view_camera[0])/2
//halfViewHeight =camera_get_view_height(view_camera[0])/2

//camera_set_view_pos(view_camera[0], x - halfViewWidth, y - halfViewHeight)


#endregion 