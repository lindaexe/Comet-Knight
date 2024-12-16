/// @description Insert description here
// You can write your code in this editor
draw_self()

if(flashAlpha > 0 && sprite_exists(sprite_index)) 
{
	shader_set(sh_white);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, 
		flashColor, flashAlpha);
	shader_reset();
}