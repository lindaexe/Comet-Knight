/// @description Insert description here
// You can write your code in this editor

// Use end step to react logic that happen on step event

image_xscale =self.x_Scale; 
image_yscale = self.y_Scale; 
if(can_move){
switch (self.animation_state)
{
	case 0: 
		// idle
		image_speed= 0.0; 
	switch(facing){
		case 1: 
		// north
			sprite_index = spr_player_up;
			image_index = 0;
		break; 
		case 2: 
		// east
			sprite_index = spr_player_right;
			image_index = 0; 
		break ; 
		case 3: 
		// south
			sprite_index = spr_player_down;
			image_index = 0; 
		break ; 
		case 4: 
		// west
			sprite_index = spr_player_left;
			image_index = 0; 
		break ; 
		}
	break; 
	case 1: 
		// north
		sprite_index = spr_player_up
		image_speed = animation_speed; 
	break; 
	case 2: 
		// east
		sprite_index = spr_player_right
		image_speed = animation_speed; 
	break ; 
	case 3: 
		// south
		sprite_index = spr_player_down
		image_speed = animation_speed; 
	break ; 
	case 4: 
		// west
		sprite_index = spr_player_left
		image_speed = animation_speed; 
	break ; 
	case 5:
	// up attack
		sprite_index = spr_player_attack_up
		image_speed = 1; 
	break;
	case 6:
	// right attack
		sprite_index = spr_player_attack_right;
		image_speed = 1; 
	break;
	case 7:
	// down attack
		sprite_index = spr_player_attack_down;
		image_speed = 1; 
	break;
	case 8:
	// left attack
		sprite_index = spr_player_attack_left;
		image_speed = 1; 
	break;
	case 9:
	// up attack
		
		sprite_index = spr_shoot_up
		image_speed = 1; 
	break;
	case 10:
	// right attack
		
		sprite_index = spr_shoot_right;
		image_speed = 1; 
	break;
	case 11:
	// down attack
		
		sprite_index = spr_shoot_down;
		image_speed = 1; 
	break;
	case 12:
	// left attack
		
		sprite_index = spr_shoot_left;
		image_speed = 1; 
	break;
}
}
if(!can_move){
	image_speed= 0.0
}

// player is dead self destruct
if(health <=0)
{
	
	self.isDead = true
	
	// play death animation 
	switch(facing){
		case 1: 
		// north
			sprite_index = spr_player_death_up;
			image_index = 0;
			instance_create_depth(self.x,self.y,0, obj_player_dead_up)
		break; 
		case 2: 
		// east
			sprite_index = spr_player_death_right;
			image_index = 0; 
			instance_create_depth(self.x,self.y,0, obj_player_dead_right)
		break ; 
		case 3: 
		// south
			sprite_index = spr_player_death_down;
			image_index = 0; 
			instance_create_depth(self.x,self.y,0, obj_player_dead_down)
		break ; 
		case 4: 
		// west
			sprite_index = spr_player_death_left;
			image_index = 0; 
			instance_create_depth(self.x,self.y,0, obj_player_dead_left)
		break ; 
		}
	audio_play_sound(sfx_music_death,8,false)
	instance_destroy(self)
}

