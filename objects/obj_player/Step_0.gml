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
if ( keyboard_lastkey >= ord("0") && keyboard_lastkey <= ord("9") && can_move )
{
	var selection = keyboard_lastchar
	if (self.selectionSound)
	{ 
		weapon_player_select(selection, selectionSound)
		self.selectionSound = false; 
	}
}
else
{
	self.selectionSound = true;
}

keyboard_lastkey = noone

//Decrease invulnerability 
if (invulnerable > 0)
{
	invulnerable--;
}

// Flashes player use the interface instead in this case 
if(place_meeting(x,y,obj_enemy_interface) )
{
	var obj = instance_place(x,y,obj_enemy_interface) 
	// player hit by an obstacle and obstacles is in attacking state reduce health / flash 
	if(!flash && can_move && obj.isObstacle && obj.isAttacking )
	{
		health -= 20
		flash = true;
		flash_alpha = 1;
		alarm[2] =	0.50 * game_get_speed(gamespeed_fps)
		audio_play_sound(sfx_player_hit,3, false)
		var enemy_Insta =  obj
		// 
		if(enemy_Insta != noone)
		{ 
			var unit_knk = 6
			// get the angle 
			enemy_angle = point_direction(enemy_Insta.x, enemy_Insta.y, self.x, self.y)
			knbX = lengthdir_x( unit_knk, enemy_angle) // move 4 units on x
			knbY = lengthdir_y(unit_knk, enemy_angle) // move 4 units on y
			can_move = false
			// now alarm it
			enemy_delay = 0.50
			alarm[1] = enemy_delay * game_get_speed(gamespeed_fps); 
		}	
	} // when player gets touched by a non-obstacle enemy reduce health/flash
	else if (!obj.isObstacle)
	{
		health -= 20
		flash = true;
		flash_alpha = 1;
		alarm[2] =	0.50 * game_get_speed(gamespeed_fps)
		audio_play_sound(sfx_player_hit,3, false)
		var enemy_Insta =  obj
		// 
		if(enemy_Insta != noone)
		{ 
			var unit_knk = 6
			// get the angle 
			enemy_angle = point_direction(enemy_Insta.x, enemy_Insta.y, self.x, self.y)
			knbX = lengthdir_x( unit_knk, enemy_angle) // move 4 units on x
			knbY = lengthdir_y(unit_knk, enemy_angle) // move 4 units on y
			can_move = false
			// now alarm it
			enemy_delay = 0.50
			alarm[1] = enemy_delay * game_get_speed(gamespeed_fps); 
		}
	}
}


if(flash_alpha > 0)
{
	flash_alpha -= 0.05;
}

if (!can_move)
{
	knbX *= 0.85
	knbY *= 0.85
	
	xVelocity =  knbX
	yVelocity =  knbY
	
	var predictedX = x + xVelocity 
	var predictedY = y + yVelocity 
	
	// if not touching why on X cordinate move otherwise phase out 1 pixel
	if (!place_meeting(predictedX, y, obj_collidable))
	{
		x += knbX
	}
	else
	{
		
		predictedX = x;
		// loop till phased out 
		while (!place_meeting(predictedX,y, obj_collidable))
		{
			
			predictedX += sign(knbY)
		}
		
		x = predictedX - sign(knbY)  // one pixel away
	}
	
	// if not touching on Y cordinate move otherwise phase out 1 pixel
	if ( !place_meeting(x, predictedY, obj_collidable) )
	{
		y += knbY
	}
	else
	{
		predictedY = y;
		// loop till phased out
		while ( !place_meeting(x,predictedY, obj_collidable) )
		{
			predictedY += sign(knbY);
		}
		y = predictedY - sign(knbY); // one pixel away
	}
	
	
	

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
		alarm[0] = attack_Time *  game_get_speed( gamespeed_fps) ;
		show_debug_message("Attack occurred");   
		var offsetX = x
		var offsetY = y
		var angle = 0; 
		
		// check facing 
		switch(self.facing)
		{
			case 1:  // up
				offsetY = y - weaponOffset
				angle = 90 
			break;
			case 2:  // right
				offsetX =  x + weaponOffset - 3
				offsetY += 7
			break ; 
			case 3: // down
				offsetY = y + weaponOffset
				angle = 90
			break ; 
			case 4: // left
				offsetX = x - weaponOffset  + 3
				offsetY += 7
			break ; 
			
		}
		image_index = 0; // Start attack animation from beginning
		animation_state = facing + 4; // Offset for attack animations
		audio_play_sound(sfx_sword_slash,3,false)
		var sword_proj = instance_create_layer(offsetX,offsetY,"collision_layer",obj_sword_projectile)
		sword_proj.image_angle = angle
		break; 
		case WEAPONS.GUN: 
		self.is_Attacking = true; 
		alarm[0] = attack_Time *  game_get_speed( gamespeed_fps) ;
		show_debug_message("Attack occurred");   
		switch (self.facing){
		case 1:
	// up attack
		var bullet = instance_create_layer(x,y,"Instances",obj_bullet_up)
		bullet.vspeed = -5
		 
	break;
	case 2:
	// right attack
	var bullet = instance_create_layer(x,y+10,"Instances",obj_bullet_right)
		bullet.hspeed = 5
		
	break;
	case 3:
	// down attack
	var bullet = instance_create_layer(x,y,"Instances",obj_bullet_down)
		bullet.vspeed = 5
		 
	break;
	case 4:
	// left attack
	var bullet = instance_create_layer(x,y+10,"Instances",obj_bullet_left)
		bullet.hspeed = -5
		
   break; 
		
		 
		}
		image_index = 0; // Start attack animation from beginning
		animation_state = facing + 8; // Offset for attack animations
		audio_play_sound(sfx_lazer_shot_Clean,3,false)
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
	
	xVelocity = (right - left ) * walkSpeedX
	yVelocity = (down - up ) * walkSpeedY
	
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
