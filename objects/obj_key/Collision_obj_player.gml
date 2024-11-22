/// @description Insert description here
// You can write your code in this editor

// increment keys
// play some sound affect
obj_controller.key_count += 1
show_debug_message(obj_controller.key_count)
self.persistent = false
audio_play_sound(sfx_key_collect,4,false)
instance_destroy(self); 
