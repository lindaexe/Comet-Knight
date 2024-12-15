/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
if( self.hitPoints <= 0 && isInvulnerable == false)
{
	sprite_index = spr_boss_death
	alarm[5] = game_get_speed(gamespeed_fps) * 1
	isInvulnerable = true
}
if(hitPoints <= (maxHitPoints/2) && phase == 1){
	self.isAttacking = false
	phase = 2
	sprite_index =spr_phase2_appear
	alarm[4] = game_get_speed(gamespeed_fps) * 1
	instance_destroy(obj_octo_turret)
	instance_create_depth(self.x,self.y,0, obj_boss_phase2_dialog)
	instance_destroy(obj_fireball_sm)
}
else if(attack_mode == 1 && phase == 1){
	if(!instance_exists(obj_octo_turret)){
		attack_mode = 0
		self.isAttacking = false
		sprite_index = spr_appear
		alarm[0] = game_get_speed(gamespeed_fps) * 1
		self.isInvulnerable = false
		alarm[2] = game_get_speed(gamespeed_fps) * 6
	}
}