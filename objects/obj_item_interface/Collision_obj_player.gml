/// @description Insert description here
// You can write your code in this editor
show_debug_message("item collected")
ds_list_add(obj_controller.players_weapons, item_type );
audio_play_sound(sfx_power_up,10,false)
instance_destroy(self)
