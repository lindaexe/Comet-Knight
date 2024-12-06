/// @description Insert description here
// You can write your code in this editor
if(!isIgnited){
	isIgnited = true
	alarm[0] = game_get_speed(gamespeed_fps) * 3
	sprite_index = spr_ignited_bomb
	image_index = 0
}