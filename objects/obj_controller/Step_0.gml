/// @description Insert description here
// You can write your code in this editor

var currRoom = room; 

if (currRoom == Tutorial && key_count == 1 && hasTriggered)
{
	instance_create_depth(self.x,self.y,0, obj_keys_collected_dialog)
	hasTriggered = false
}

// player got hit atleast once tell them to get health from eating fruit ! 
if (currRoom == Tutorial && health != 100 && triggerHealthTut)
{
	triggerHealthTut = false
	instance_create_depth(self.x,self.y,0, obj_health_dialog)
}

if(currRoom == Tutorial && hasTriggerMusic)
{
	audio_stop_sound(sfx_music_level_tutorial)
	audio_play_sound(sfx_music_level_tutorial,3, true)
	hasTriggerMusic = false
	key_count = 0; 
}
if(currRoom == Room1 && hasTriggerMusic )
{
	audio_stop_sound(sfx_music_level_tutorial)
	audio_play_sound(sfx_music_level_one,3, true)
	hasTriggerMusic = false
	key_count = 0; 
}
else if(currRoom == Level2_main_room && hasTriggerMusic)
{
	audio_stop_sound(sfx_music_level_one)
	audio_play_sound(sfx_music_level_two,3, true)
	hasTriggerMusic = false
	key_count = 0; 
}
else if (currRoom == BossRoom && hasTriggerMusic)
{
	audio_stop_sound(sfx_music_level_two)
	audio_play_sound(sfx_music_boss,3, true)
	hasTriggerMusic = false
	key_count = 0; 
}