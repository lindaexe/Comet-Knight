/// @description Insert description here
// You can write your code in this editor
/// @description Draw slime with effects

// Flash effect when hurt
draw_self(); // Draws the slime normally

// Optional: Draw health bar
var hp_width = 20;
var hp_height = 4;
var hp_x = x - hp_width/2;
var hp_y = y - sprite_height/2 - 5;

if (state != SlimeState.DEAD)
{
	draw_rectangle_color(hp_x, hp_y, hp_x + hp_width, hp_y + hp_height, c_black, c_black, c_black, c_black, true);
	draw_rectangle_color(hp_x, hp_y, hp_x + (hp_width * (hp/max_hp)), hp_y + hp_height, c_red, c_red, c_red, c_red, false);
}

if(flash){
	shader_set(sh_white);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, 
		flash_color, flash_alpha);
	shader_reset();
	
}