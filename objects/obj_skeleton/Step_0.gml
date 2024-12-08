


var player = instance_find(obj_player,0)

damage_reset_timer += delta_time 
if ( damage_reset_timer >= damage_reset_delay)
{
	can_be_damaged = true;
}

// code for hurting the goblin , stop the collison too 
if ( place_meeting(x, y, obj_parent_damage) ) 
{

    var damage_item = instance_place(x,y,obj_parent_damage);

    // Calculate knockback direction
    var angle = point_direction(damage_item.x, damage_item.y, x, y);
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
		self.hitPoints -= damage_item.damage 
		can_be_damaged = false; 
		damage_reset_timer = 0; 
		damage_reset_delay = damage_item.duration * 1000000; // delay till get damaged again
		audio_play_sound(sfx_hit, 1, false)
		flashAlpha = 1 
		image_speed = 0 
		image_index = 0; 
	}
	
}  
else if (!isHurt)  // when enemy not hurt 
{ 
	if (player != noone)
	{ 
		// player and enemy coordinates 	
		var playerX  = player.x
		var playerY = player.y
	
		var enemyX = self.x; 
		var enemyY = self.y ; 
	
		var predictedX = x + xVelocity
		var predictedY = y + yVelocity 
		// if enemy not players X coordinate chase him on X axis 
		if (!delayNextAttack)
		{ 
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
				if ( abs(dx) > abs(dy)) {
				    // Moving horizontally (dominant X-axis)
				    if (dx > 0) {
				         self.face = DIRECTION.RIGHT
				    } else if (dx < 0) {
				         self.face = DIRECTION.LEFT
				    }
				} else {
				    // Moving vertically (dominant Y-axis)
				    if (dy > 0) {
				       	    self.face = DIRECTION.DOWN
				    } else if (dy < 0) {
				      self.face = DIRECTION.UP
				    }
				}

				image_speed = 1
			}
			
		
			
		}
		else if (hasDelayed) 
		{
			//trigger alarm to delay attack d
			alarm[0] = game_get_speed(gamespeed_fps) * delayAttackTime
			image_speed = 0
			hasDelayed = false
			path_end()
		}
	}
} 

// flash
if (flashAlpha > 0)
{
	flashAlpha -= 0.05 
}




