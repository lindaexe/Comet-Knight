/// @description Insert description here
// You can write your code in this editor

enum DIRECTION
{
	LEFT = 1, 
	RIGHT, 
	UP, 
	DOWN 
}



switch(self.direction)
{
	case DIRECTION.LEFT : 
	image_angle += 270
	break ; 
	case DIRECTION.RIGHT:
	image_angle += 90
	break; 
	case DIRECTION.UP:
	image_angle += 180
	break ; 
	case DIRECTION.DOWN:
	image_angle += 0
	break; 
}

// flash= 
flashAlpha = 0 
flashColor = c_white 
