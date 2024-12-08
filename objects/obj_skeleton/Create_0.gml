/// @description Insert description here
// You can write your code in this editor

image_xscale = 1.5 
image_yscale = 1.5

enum FACING 
{
	LEFT = 1, 
	RIGHT , 
	UP, 
	DOWN 
}

if (inRound) { 
var nearestSwitch= instance_nearest(x,y, obj_switch_round)
if (nearestSwitch != noone)
{ 
	self.switchIndex = nearestSwitch.switchIndex
} 
} 

// update search 

path  = path_add() 

target_x = obj_player.x 
target_y = obj_player.y  


// flash= 
flashAlpha = 0 
flashColor = c_white 