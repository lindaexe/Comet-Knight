/// @description Insert description here
// You can write your code in this editor
if(phase ==1){
	if(!isAttacking && instance_exists(obj_player) && obj_player.can_move == true){
		attack_mode = 1
		self.isAttacking = true
		sprite_index = spr_disappear
		self.isInvulnerable = true
		alarm[3] = game_get_speed(gamespeed_fps) * 1
		instance_create_layer(self.x + 150,self.y,"Instances",obj_octo_turret)
		instance_create_layer(self.x - 150,self.y,"Instances",obj_octo_turret)
		alarm[2] = game_get_speed(gamespeed_fps) * 12
	}
	else{
		alarm[2] = game_get_speed(gamespeed_fps) * 1
	}
}
else{
	if(  instance_exists(obj_player) && obj_player.can_move == true && !instance_exists(obj_octo_turret)){
		self.isAttacking = true
		sprite_index = spr_ph2_melee
		alarm[0] = game_get_speed(gamespeed_fps) * 1.75
		alarm[6] = game_get_speed(gamespeed_fps) * 1.5
		alarm[2] = game_get_speed(gamespeed_fps) * 6
		
	}
	else{
		alarm[2] = game_get_speed(gamespeed_fps) * 1
	}
}