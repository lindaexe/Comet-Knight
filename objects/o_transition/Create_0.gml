/// @description Insert description here
// You can write your code in this editor

enum states
{
	OUT, 
	IN
}

state = states.OUT 

// set up sprite for the transition. 

spr = s_trans_sq; 

// get width and height

sprw = sprite_get_width(spr)
sprh = sprite_get_height(spr)

// get amount of sprites needed for 
xmax = display_get_gui_width() div sprw 
ymax = display_get_gui_height() div sprh

imax = sprite_get_number(spr); // max frame of the that sprite

// set image_speed 
sub_image_index_inc = sprite_get_speed(spr) / room_speed; 
sub_image_index = 0; 

// transistion color 
col = c_black 

// room
target_room = noone; 
targetX = noone; 
targetY = noone; 