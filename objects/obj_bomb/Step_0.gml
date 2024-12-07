/// @description Insert description here
// You can write your code in this editor
if(image_index == 4 || image_index == 2)
{
	audio_play_sound(sfx_bomb_ignite,5,false)
}


// code for hurting the goblin
if ( place_meeting(x, y, obj_parent_damage) ) 
{
	
	alarm[0] = game_get_speed(gamespeed_fps) * 3
	sprite_index = spr_ignited_bomb
	image_index = 0
	
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

	
}