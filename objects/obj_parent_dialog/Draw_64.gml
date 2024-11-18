/// @description Insert description here
// You can write your code in this editor

if (showDialog) 
{
	// set up variables 
	var txt_x = 30; 
	var txt_y = 18 
	var strLength = 32 
	var border = 5 ; 
	var padding = 16; 
	
	
	// get length of the message 
	var strLength = string_height(current_Dialog.npc_msg) 
	
	// make sure dialog is not taller than sprite 
	
	if (sprite_get_height(current_Dialog.npc_img) > strLength)
	{
		strLength = sprite_get_height(current_Dialog.npc_img)
	}
	
	strLength += padding * 2 ; 
	txt_x = sprite_get_width(current_Dialog.npc_img) + padding * 2; 
	draw_set_alpha(alpha)
	
	draw_set_color(c_black)
	draw_rectangle(border, border + 650 , display_get_gui_width() - border, strLength - border + 650, false)
	
	// make sure sprite exists
	if (current_Dialog.npc_img != -1)
	{
		draw_sprite(current_Dialog.npc_img , 0, border * 3 , border + 650)
		draw_set_color(c_white)
		draw_text_ext(txt_x + 650, txt_y + 650, current_Dialog.npc_msg, 16, display_get_gui_width() - 192) 
	}
	
	alpha = lerp(alpha, 1 , 0.06)
	
}