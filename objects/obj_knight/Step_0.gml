/// @description Insert description here
// You can write your code in this editor

// check timer
damage_reset_timer += delta_time 
if ( damage_reset_timer >= damage_reset_delay)
{
	can_be_damaged = true;
}



// check knight hit the place 
if (  instance_exists(obj_player)  && !delayNextAttack) 
{
	var x_delta = abs(x - obj_player.x)
	var y_delta = abs(y - obj_player.y)

	if (x_delta < 30 && y_delta < 30 )
	{
			show_debug_message("hit player")
		//trigger alarm to delay attack d
		alarm[0] = game_get_speed(gamespeed_fps) * delayAttackTime
		image_speed = 0
		hasDelayed = false
		delayNextAttack = true
		path_end()
	}
} 

if (hasDelayed)
{ 
// check damage collisions 
if (place_meeting(x,y,obj_parent_damage))
{
	var dmg_obj = instance_place(x, y, obj_parent_damage);
	if (dmg_obj != noone)
	{
		// now get the angle of the objec  
		angle = point_direction(x,y, dmg_obj.x, dmg_obj.y)
		
		var has_been_hit = true
		if(angle <= 180 - angle_offset  && angle >= 0 + angle_offset && self.facing == ENEMY_FACE.UP) // up case
		{
		
			has_been_hit = false
		}
		else if (angle <= 360 - angle_offset && angle >= 180 + angle_offset && self.facing == ENEMY_FACE.DOWN) // down case 
		{
			
			has_been_hit = false
		}
		else if (angle - angle_offset >= 90 && angle <= 270 - angle_offset && self.facing == ENEMY_FACE.LEFT) // left case
		{
		
			has_been_hit = false
		}
		else if( angle <= 90  || angle >= 270  &&  self.facing == ENEMY_FACE.RIGHT)// right case 
		{
			
			has_been_hit = false
		}
		
		if(dmg_obj.object_index == obj_explosion)
		{
			has_been_hit = true
		}
		
		// not hurt play sound 
		if(!has_been_hit )
		{
			if (hitReset)
			{ 
				audio_play_sound(sfx_stone_step,5,false)
				alarm[2] = game_get_speed(gamespeed_fps) * 0.25
				hitReset = false
			} 
			
			if(dmg_obj.isBullet)
			{
				instance_destroy(dmg_obj)	
			}
		}
		else
		{
			
			angle = point_direction(dmg_obj.x, dmg_obj.y, x, y);
			show_debug_message(angle)
			// Knockback calculations 
			knbX = lengthdir_x(knockback_Velocity, angle);
		    knbY = lengthdir_y(knockback_Velocity, angle);
			
	
			var predictedX = x + knbX 
			var predictedY = y + knbY 
	
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
			
					predictedX += sign(knbX)
				}
		
				x = predictedX - sign(knbX)  // one pixel away
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
	
	
			knbX *= 0.85 
			knbY *= 0.85 
			
			isHurt = true 
			alarm[1] = game_get_speed(gamespeed_fps) * delayAttackTime // time they get hurt
	
			if (can_be_damaged)
			{
				self.hitPoints -= dmg_obj.damage 
				can_be_damaged = false; 
				damage_reset_timer = 0; 
				damage_reset_delay = dmg_obj.duration * 1000000; // delay till get damaged again
				audio_play_sound(sfx_hit, 1, false)
				image_speed = 0 
				image_index = 0; 
				flashAlpha = 1 
				if (dmg_obj.isBullet == true || dmg_obj == obj_sword_projectile)
				{
					instance_destroy(dmg_obj)
				}
			}
			
		}
	}
	
} // detect if close for manhattan distance travel 
else if (  instance_exists(obj_player) && 
point_distance(x,y, obj_player.x, obj_player.y) < 
	pythagorean_ply_dis &&  (abs(originX - x)   <= rangeX)  ) 
{
	knightState = KNIGHT_STATES.CHASE
	// now start chase
	show_debug_message("chase")
	// get the path of the player 
			path_delete(path)
			path = path_add()
			// target 
			var target = instance_nearest(x,y,obj_player)
			targetX = target.x
			targetY = target.y
			if(target != noone && obj_controller != noone  )
			{
				mp_grid_path(obj_controller.grid, path, x,y, targetX, targetY, false)
				// new path
				path_start(path, walk_speed, path_action_stop, true)
				alarm[1] =  game_get_speed( gamespeed_fps) * pathDelay; 
				// get the next path 
				
				var nextX = path_get_x(path,1); 
				var nextY = path_get_y(path,1);
				
				
				// Calculate the movement deltas
				var dx = nextX - x; // Change in X
				var dy = nextY - y; // Change in Y

				// Determine direction based on the axis of movement
				if ( abs(dx) > abs(dy))
				{
				    // Moving horizontally (dominant X-axis)
				    if (dx > 0)
					{
				         self.facing = ENEMY_FACE.RIGHT
				    }
					else if (dx < 0)
					{
				         self.facing= ENEMY_FACE.LEFT
				    }
				} 
				else 
				{
				    // Moving vertically (dominant Y-axis)
				    if (dy > 0)
					{
						self.facing = ENEMY_FACE.DOWN
				    } else if (dy < 0)
					{
				      self.facing = ENEMY_FACE.UP
				    }
				}
			}
} 
else if (knightState == KNIGHT_STATES.CHASE)
{
	knightState = KNIGHT_STATES.RETURN
}
else if(knightState == KNIGHT_STATES.RETURN && instance_exists(obj_player)) // go back to original position
{
	// go back to original postion 
	
	path_delete(path)
			path = path_add()
			// target 
			var target = instance_nearest(x,y,obj_player)
			if(target != noone && obj_controller != noone  )
			{
				mp_grid_path(obj_controller.grid, path, x,y, originX, originY, false)
				// new path
				path_start(path, walk_speed, path_action_stop, true)
				alarm[1] =  game_get_speed( gamespeed_fps) * pathDelay; 
				// get the next path 
				
				var nextX = path_get_x(path,1); 
				var nextY = path_get_y(path,1);
				
				
				// Calculate the movement deltas
				var dx = nextX - x; // Change in X
				var dy = nextY - y; // Change in Y

				// Determine direction based on the axis of movement
				if ( abs(dx) > abs(dy))
				{
				    // Moving horizontally (dominant X-axis)
				    if (dx > 0)
					{
				         self.facing = ENEMY_FACE.RIGHT
				    }
					else if (dx < 0)
					{
				         self.facing = ENEMY_FACE.LEFT
				    }
				} 
				else 
				{
				    // Moving vertically (dominant Y-axis)
				    if (dy > 0)
					{
						self.facing = ENEMY_FACE.DOWN
				    } else if (dy < 0)
					{
				      self.facing = ENEMY_FACE.UP
				    }
				}
			}
			
			if(x == originX && y == originY)
			{
				self.knightState = KNIGHT_STATES.PATROL
			}
			
			
}
else if( self.knightState == KNIGHT_STATES.PATROL && instance_exists(obj_player))// patrol mode 
{
		// has not hit the player roam the hallway 
		if ( canMove)
		{
			image_speed  = 1
			if(attacker_type == 1) // horizontal
			{
				// just go back and forth 
				if(isleft)
				{
					self.facing = ENEMY_FACE.LEFT
					// go left 
					x -= 1 * xVelocity
					// change direction 
					if(  originX - x   > rangeX )
					{
						isleft = false
						alarm[3] = game_get_speed(gamespeed_fps) * idleTime 
						image_speed  = 0
						canMove = false
					}
				}
				else
				{
					self.facing = ENEMY_FACE.RIGHT
					x += 1 * xVelocity
					// change direction 
					if( x - originX   > rangeX )
					{
						isleft = true
						alarm[3] = game_get_speed(gamespeed_fps) * idleTime 
						image_speed  = 0 
						canMove = false
					}
				}
				// each turn do an event to stop movement 
			}
			else // vertical 
			{ // beg
					image_speed  = 1
			if(attacker_type == 1) // horizontal
			{
				// just go back and forth 
				if(isup)
				{
					self.facing = ENEMY_FACE.UP
					// go left 
					y -= 1 * yVelocity
					// change direction 
					if(  originY - y   > rangeY )
					{
						isup = false
						alarm[3] = game_get_speed(gamespeed_fps) * idleTime 
						image_speed  = 0
						canMove = false
					}
				}
				else
				{
					self.facing = ENEMY_FACE.DOWN
					y += 1 * yVelocity
					// change direction 
					if( y - originY   > rangeY )
					{
						isup = true
						alarm[3] = game_get_speed(gamespeed_fps) * idleTime 
						image_speed  = 0 
						canMove = false
					}
				}
			} // end
		} 
}
}
} 
if (flashAlpha > 0)
{
	flashAlpha -= 0.05 
}