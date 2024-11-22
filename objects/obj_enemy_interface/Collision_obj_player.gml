/// @description Insert description here
// You can write your code in this editor

//if player steps on spike or touches slime 
if (self.hasHit) {
	    health -= self.damage
		show_debug_message("player_hit");
		self.hasHit = false
		other.isHurt = true
	}else{
		alarm[0] = delay * game_get_speed(gamespeed_fps);	
}

	