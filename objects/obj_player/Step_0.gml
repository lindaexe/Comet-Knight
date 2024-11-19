/// @description Insert description here
// You can write your code in this editor

/* Event handler excuters for every step */

// keyboard_check returns bool is similary to key press not key down event  
var up = keyboard_check(ord("W"));
var left = keyboard_check(ord("A"));
var down = keyboard_check(ord("S")); 
var right = keyboard_check(ord("D")); 
var space =  keyboard_check_pressed(vk_space); 


// keyboard check for weapons equiped 
if ( keyboard_lastkey >= ord("0") && keyboard_lastkey <= ord("9") && can_move)
{
	var selection = keyboard_lastchar 
	weapon_player_select(selection)
	
}

/* Handle event the player presses space bar */
if (space && ds_list_size(obj_controller.players_weapons) !=0 && can_move)
{	
	
	// check weapon currently active 
	var activeWeapon = obj_controller.weapon_selected
	switch(activeWeapon)
	{
		case WEAPONS.SWORD:
		
		self.is_Attacking = true; 
		alarm[0] = attack_Time * room_speed;
		show_debug_message("Attack occurred");   
		// Create an instance 
    
		image_index = 0; // Start attack animation from beginning
		animation_state = facing + 4; // Offset for attack animations
		audio_play_sound(sfx_sword_slash,3,false)
		
		break; 
		case WEAPONS.GUN: 
	
		break; 
		case WEAPONS.MINE: 
		break; 
	}
	
}
else if(!is_Attacking && can_move)
{
	// prevent diagonals 
	// let allow only direction at a time prevent diagonals 
	if ( right && up )
	{
		right =false; 
		up = false;
	}
	else if (right && down)
	{
		right = false; 
		up = false; 
	}
	else if (left && up)
	{
		left = false; 
		up = false; 
	}
	else if(down & left)
	{
		left = false; 
		down = false; 
	}
	
	xVelocity = (right - left ) * walkSpeed
	yVelocity = (down - up ) * walkSpeed
	
	var predictedX = x + xVelocity 
	var predictedY = y + yVelocity 
	
	// if not touching why on X cordinate move otherwise phase out 1 pixel
	if (!place_meeting(predictedX, y, obj_collidable))
	{
		x += xVelocity
	}
	else
	{
		
		predictedX = x;
		// loop till phased out 
		while (!place_meeting(predictedX,y, obj_collidable))
		{
			
			predictedX += sign(xVelocity)
		}
		
		x = predictedX - sign(xVelocity)  // one pixel away
	}
	
	// if not touching on Y cordinate move otherwise phase out 1 pixel
	if ( !place_meeting(x, predictedY, obj_collidable) )
	{
		y += yVelocity
	}
	else
	{
		predictedY = y;
		// loop till phased out
		while ( !place_meeting(x,predictedY, obj_collidable) )
		{
			predictedY += sign(yVelocity);
		}
		y = predictedY - sign(yVelocity); // one pixel away
	}
	

	// check state of the animation
	if ( ( down - up == 0) && (right-left == 0 ) ) 
	{
		// idle state 
		animation_state = 0; // for IDLE 
	}
	else
	{
		// we are moving 
		if (down - up < 0)
		{
			animation_state= 1 ; // up
			facing = 1 ; 
		}
		else if (down-up > 0)
		{
			animation_state = 3; // down 
			facing = 3
		}
		
		if (right - left < 0)
		{
			animation_state = 4  // left
			facing = 4
		}
		else if (right-left > 0)
		{
			animation_state = 2  //right
			facing = 2
		}		
	}
} 