/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_wall)
{
	show_debug_message("Bullet hit wall")
	instance_destroy(self)
}
if((x <= (0 - sprite_width)) || (x >= room_width+sprite_width) || (y >= room_height + sprite_height) || (y <= (0-sprite_height)))
{
	show_debug_message("Bullet out of bounds")
    instance_destroy(self)
}