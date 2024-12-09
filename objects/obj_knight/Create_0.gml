enum ENEMY_FACE
{
	UP = 1, 
	DOWN, 
	LEFT, 
	RIGHT
}

enum ATTACK_TYPE
{
	HORIZONTIAL = 1, 
	VERTICAL = 2
}

enum KNIGHT_STATES 
{
	PATROL, 
	CHASE, 
	RETURN
}

self.facing = ENEMY_FACE.RIGHT

image_xscale = 1.5
image_yscale = 1.5

// flash
flashAlpha = 0 
flashColor = c_white 

originX = x 
originY = y 

path  = path_add() 
if (instance_exists(obj_player))
{ 
	target_x = obj_player.x 
	target_y = obj_player.y  
}
else
{
	target_x = 0
	target_y = 0 
}
knightState = KNIGHT_STATES.PATROL