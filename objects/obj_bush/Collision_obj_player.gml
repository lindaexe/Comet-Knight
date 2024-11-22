/// @description Insert description here
// You can write your code in this editor
if(obj_player.is_Attacking && ((obj_controller.weapon_selected == WEAPONS.GUN) || obj_controller.weapon_selected == WEAPONS.SWORD)){
	audio_play_sound(sfx_sword_crunch,2,false)
	instance_destroy(self)
	show_debug_message("Attack hit");   
}
