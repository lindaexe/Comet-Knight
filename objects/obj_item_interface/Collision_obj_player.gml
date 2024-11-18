/// @description Insert description here
// You can write your code in this editor
show_debug_message("item collected")
if (item_type == WEAPONS.GUN || item_type == WEAPONS.MINE || item_type == WEAPONS.SWORD) 
{ 
	ds_list_add(obj_controller.players_weapons, item_type );
} 
if (self.sound_play != noone)
{
	audio_play_sound(sound_play,10,false)
} 
if (self.spawn_asset != noone)
{
	instance_create_depth(self.x,self.y,0, spawn_asset)
} 
instance_destroy(self)
