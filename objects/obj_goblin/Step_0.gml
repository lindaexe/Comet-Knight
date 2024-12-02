

var player = instance_find(obj_player,0)

// code for hurting the goblin
if ( place_meeting(x, y, obj_parent_damage) ) 
{

    var damage_item = instance_place(x,y,obj_parent_damage);
     
	 
	
	
	damage_reset_timer += delta_time 
	if ( damage_reset_timer >= damage_reset_delay)
	{
		can_be_damaged = true;
		show_debug_message("can damage again")
	}
	 
	 
    // Calculate knockback direction
    var angle = point_direction(damage_item.x, damage_item.y, x, y);
    knbX = lengthdir_x(knockback_Velocity, angle);
    knbY = lengthdir_y(knockback_Velocity, angle);

	x += knbX
	y += knbY 
	
	knbX *= 0.85 
	knbY *= 0.85 
	isHurt = true 
	alarm[1] = game_get_speed(gamespeed_fps) * delayAttackTime // time they get hurt
	

	
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
					y += 1 * xVelocity 
					image_speed = 1 
					face = FACING.DOWN	
				}
				else if ( (enemyY - playerY) > 32 )
				{
					// player is up
					y -= 1 * xVelocity 
					image_speed = 1
					face = FACING.UP
				}
				else
				{
					image_index = 0 ;
					canMove = false
					
				}
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

