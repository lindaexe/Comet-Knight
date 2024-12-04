

var player = instance_find(obj_player,0)

damage_reset_timer += delta_time 
if ( damage_reset_timer >= damage_reset_delay)
{
	can_be_damaged = true;
}

// code for hurting the goblin
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
		audio_play_sound(sfx_sword_crunch, 1, false)
		image_speed = 0 
		image_index = 0; 
	}
	
}  
else if (!isHurt) 
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
			
			if( (enemyX - playerX) < 0 )
			{				
				// player is on the right move positive
				x += 1 * xVelocity 
				image_speed = 1 
				face = FACING.RIGHT
			}
			else if ( (enemyX - playerX) > 16  )
			{
				// player is on the left 
				x -= 1 * xVelocity 
				image_speed = 1
				face = FACING.LEFT
			}
			else 
			{
				// if enemy not palyers Y coordinate chase him on Y axis 
				if( (enemyY - playerY) < -32 )
				{
					// player is down
					y += 1 * yVelocity 
					image_speed = 1 
					face = FACING.DOWN	
				}
				else if ( (enemyY - playerY) > 32 )
				{
					// player is up
					y -= 1 * yVelocity 
					image_speed = 1
					face = FACING.UP
				}
				else
				{
					image_index = 0 ;
					canMove = false
				}
			}
				
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
			
		}
		else if (hasDelayed) 
		{
			//trigger alarm to delay attack d
			alarm[0] = game_get_speed(gamespeed_fps) * delayAttackTime
			image_speed = 0
			hasDelayed = false
		}
	}
} 

// now check collisions 

