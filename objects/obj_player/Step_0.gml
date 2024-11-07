/// @description Insert description here
// You can write your code in this editor

/* Event handler excuters for every step */

// keyboard_check returns bool is similary to key press not key down event  
var up = keyboard_check(ord("W"));
var left = keyboard_check(ord("A"));
var down = keyboard_check(ord("S")); 
var right = keyboard_check(ord("D")); 
var space =  keyboard_check_pressed(vk_space); 





/* Handle event the player presses space bar */
if (space)
{	
	self.is_Attacking = true; 
	alarm[0] = attack_Time * room_speed; 
	show_debug_message("Attack occurred");   
	// Create an instance 
	melee_i = instance_create_depth(x+self.width,y,0,obj_melee_attack); 
}
else if(!is_Attacking )
{
	
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
	
	// Turn input into velolcity,  cancel out opposing inputs  
	x_Velo = (right-left) * x_speed; 
	y_Velo = (down-up) * y_speed; 

	// apply velocity to player postion
	x += x_Velo; 
	y += y_Velo	; 
 
 
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