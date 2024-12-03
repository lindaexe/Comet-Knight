/// @description Insert description here
// You can write your code in this editor
	if (can_be_damaged) 
	{
		self.hitPoints -= other.damage 
		can_be_damaged = false; 
		damage_reset_timer = 0; 
		damage_reset_delay = other.duration * 1000000; // delay till get damaged again
		audio_play_sound(sfx_hit, 0, false)
		flashAlpha = 1 
	}