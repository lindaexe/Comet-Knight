/// @description Insert description here
// You can write your code in this editor


// Death animation
if( self.hitPoints <= 0 && triggerDeath)
{
	sprite_index = spr_boss_death
	alarm[5] = game_get_speed(gamespeed_fps) * .95
	triggerDeath = false
} // phase 2 
if(hitPoints <= (maxHitPoints/2) && phase == 1 && triggerDeath)
{
	self.isAttacking = false
	phase = 2
	sprite_index =spr_phase2_appear
	alarm[4] = game_get_speed(gamespeed_fps) * 1
	instance_destroy(obj_octo_turret)
	instance_create_depth(self.x,self.y,0, obj_boss_phase2_dialog)
	instance_destroy(obj_fireball_sm)
} // phase 1 
else if(attack_mode == 1 && phase == 1 && triggerDeath)
{
	if(!instance_exists(obj_octo_turret)){
		attack_mode = 0
		self.isAttacking = false
		sprite_index = spr_appear
		alarm[0] = game_get_speed(gamespeed_fps) * 1
		self.isInvulnerable = false
		alarm[2] = game_get_speed(gamespeed_fps) * 6
	}
}
damage_reset_timer += delta_time 
if ( damage_reset_timer >= damage_reset_delay)
{
	can_be_damaged = true;
}


// check if hit 
if (place_meeting(x,y,obj_parent_damage) && triggerDeath)
{
	damage_item = instance_place(x, y, obj_parent_damage)
	
	if (can_be_damaged)
	{
		// damage the boss
		if (damage_item.object_index == obj_explosion) 
		{
			damage_item.damage *= (1/2)
		}
		self.hitPoints -= damage_item.damage 
		
		can_be_damaged = false; 
		damage_reset_timer = 0; 
		damage_reset_delay = damage_item.duration * 1000000; // delay till get damaged again
		audio_play_sound(sfx_hit, 1, false)
		
		flashAlpha = 1 
		if (damage_item.isBullet == true)
		{
			instance_destroy(damage_item)
		}
	}
}

if (flashAlpha > 0)
{
	flashAlpha -= 0.05 
}
if(hitPoints < 0)
{
	hitPoints = 0; 
}