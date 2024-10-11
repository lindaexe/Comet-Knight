/// @description Insert description here
// You can write your code in this editor

/* Event handler excuters for every step */

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

// Turn input into velolcity,  cancel out opposing inputs  
	x_Velo = (right-left) * x_speed; 
	y_Velo = (down-up) * y_speed; 


	// apply velocity to player postion
	x += x_Velo; 
	y += y_Velo	; 
 
} 