/// @description Insert description here
// You can write your code in this editor
// now program the damage to the enemy 
	if (can_be_damaged)
	{
		self.hitPoints -= other.damage 
		can_be_damaged = false; 
		damage_reset_timer = 0; 
		damage_reset_delay = other.duration * 1000000; // delay till get damaged again
		show_debug_message("enemy damage")
	}