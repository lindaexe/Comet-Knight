/// @description Insert description here
// You can write your code in this editor

enum DIRECTION
{
	LEFT = 1, 
	RIGHT, 
	UP, 
	DOWN 
}

// First shot to start the cycle 
alarm[0] = game_get_speed(gamespeed_fps) * fireRate
alarm[1] = game_get_speed(gamespeed_fps) * delay