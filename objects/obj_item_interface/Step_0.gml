

// go up and down depending on alarm 

if (isUp)
{
	y+= yVelocity
}
else 
{
	y-= yVelocity 
} 

// trigger alarm 
if (!triggered)
{
	triggered = true; 
	alarm[0] = delay * game_get_speed( gamespeed_fps) 
}

// also check if already collected 

if (ds_list_size( obj_controller.players_weapons) > 0 && self.item_type == WEAPONS.GUN 
|| self.item_type == WEAPONS.MINE  || self.item_type == WEAPONS.SWORD)
{
	for (var i =0; i < ds_list_size(obj_controller.players_weapons); ++i)
	{
		if( ds_list_find_value(obj_controller.players_weapons, i) == self.item_type)
		{
			instance_destroy(self)
		}
	}
} 