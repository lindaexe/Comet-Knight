/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event


// fire rate control 
fr_reset_timer += delta_time
if ( fr_reset_timer >= self.fr_reset_delay)
{
	fr_shoot = true
}

// now check 


// in shooting state

if (self.fr_shoot && can_shoot)
{  
	image_speed = 1
	var bullet = noone; 
	var dirX = -1;
	var dirY = -1; 
	switch(self.direction)
	{
		case DIRECTION.UP:
		dirY = -4;  
		dirX = 0; 
		bullet = instance_create_layer(x ,y + ( -1 * offsetY ) , "Instances", bulletType)
		break; 
		case DIRECTION.DOWN:
		dirY = 4;
		dirX = 0; 
		bullet = instance_create_layer(x ,y + offsetY, "Instances", bulletType)
		break; 
		case DIRECTION.LEFT: 
		dirX = -4 ; 
		dirY = 0; 
		bullet = instance_create_layer(x + ( -1 * offsetX ),y , "Instances", bulletType)
		break ;
		case DIRECTION.RIGHT:
		dirX = 4; 
		dirY = 0; 
		bullet = instance_create_layer(x + offsetX,y, "Instances", bulletType)
		break; 
	}
	// sound range 
	if (distance_to_object(obj_player) < sound_range )
	{ 
		audio_play_sound(sfx_lazer_shot_Crunch,1,false)
	}
	// now add velocity 
	bullet.hspeed = dirX
	bullet.vspeed = dirY
	

	fr_shoot= false 
	fr_reset_delay = fireRate * 1000000 
	fr_reset_timer = 0 
} 


if (can_shoot)
{
	// now when to stop 
	self.shoot_reset_timer += delta_time
	if ( self.shoot_reset_timer >= self.shoot_reset_delay)
	{
		self.can_shoot = false 
		self.idle_time = 0
	}

}
else
{
	// cant shoot now count the time it has stopped
	image_speed = 0; 
	// time to wait 
	self.idle_time += delta_time 
	if (self.idle_time >=  self.idle_reset_delay)
	{
		can_shoot = true 
		self.shoot_reset_timer = 0
	}
}

// health damage 
damage_reset_timer += delta_time 
if ( damage_reset_timer >= damage_reset_delay)
{
	can_be_damaged = true;
}


if (hitPoints <= 0)
{
	instance_destroy(self); 
	audio_play_sound(sfx_explosion,1,false)
}