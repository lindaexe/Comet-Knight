/// @description Insert description here
// You can write your code in this editor

for (var yy = 0; yy <= ymax ; ++yy) 
{	
	for (var xx = 0; xx <= xmax ; ++xx) {
		draw_sprite_ext(spr, min ( max(0, sub_image_index - xx), imax - 1 ) , xx * sprw, yy* sprh, 1,1,0,col, 1)
	}    
}
