
// fire rate 

// in shooting state
if (self.shooting)
{  
	alarm[0] = game_get_speed(gamespeed_fps) * fireRate
	
	var dirX = -1;
	var dirY = -1; 
	switch(self.direction)
	{
		case DIRECTION.UP:
		dirY = -1;  
		dirX = 0; 
		break; 
		case DIRECTION.DOWN:
		dirY = 1;
		dirX = 0; 
		break; 
		case DIRECTION.LEFT: 
		dirX = -1 ; 
		dirY = 0; 
		break ;
		case DIRECTION.RIGHT:
		dirX = 1; 
		dirY = 0; 
		break; 
	}
	// shoot asset bullet type
	var bullet = instance_create_layer(x + offsetX,y + offsetY, "Instances", bulletType)
	bullet.hspeed = dirX
	bullet.vspeed = dirY
	
} 