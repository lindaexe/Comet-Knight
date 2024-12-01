
// fire rate 

// in shooting state
if (self.shooting)
{  
	alarm[0] = game_get_speed(gamespeed_fps) * fireRate
	var bullet = noone; 
	var dirX = -1;
	var dirY = -1; 
	switch(self.direction)
	{
		case DIRECTION.UP:
		dirY = -4;  
		dirX = 0; 
		bullet = instance_create_layer(x ,y + ( -1 * offsetY ) , "Instances", bulletType)
		break; 
		case DIRECTION.DOWN:
		dirY = 4;
		dirX = 0; 
		bullet = instance_create_layer(x ,y + offsetY, "Instances", bulletType)
		break; 
		case DIRECTION.LEFT: 
		dirX = -4 ; 
		dirY = 0; 
		bullet = instance_create_layer(x + ( -1 * offsetX ),y , "Instances", bulletType)
		break ;
		case DIRECTION.RIGHT:
		dirX = 4; 
		dirY = 0; 
		bullet = instance_create_layer(x + offsetX,y, "Instances", bulletType)
		break; 
	}
	// sound range 
	if (distance_to_object(obj_player) < sound_range )
	{ 
		audio_play_sound(sfx_lazer_shot_Crunch,1,false)
	}
	// now add velocity 
	bullet.hspeed = dirX
	bullet.vspeed = dirY
	
} 