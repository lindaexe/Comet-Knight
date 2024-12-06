/// @description Insert description here
// You can write your code in this 

spawn_reset_timer += delta_time 
if ( self.spawn_reset_timer >= self.spawn_reset_delay)
{
	self.canSpawn = true
}



with( obj_switch_round)
{
	// check matching indedx
	if (other.switchIndex == switchIndex)
	{
		// if on start the round
		if (roundOn)
		{
			// if enemies are zero end the round 
			if (other.enemy_amount <=0 )
			{
				// end the round 
				roundOn = false 
				with( obj_spikes_switch_lvl2_Round) 
				{
					if ( other.switchIndex ==  self.switchFind) 
					{
						self.isOn = false
						image_speed = 1
					}
				}
				
				
			}
			else if (other.canSpawn)
			{
				// spawn the enemy in random origin
				size = ds_list_size ( other.spawn_locations)
				
				if (size == other.nextElement)
				{
					other.nextElement = other.nextElement % size ; 
				}
					sp = ds_list_find_value(other.spawn_locations, other.nextElement++)
					instance_create_layer(sp.x,sp.y,"Instances", obj_skeleton)
					other.spawn_reset_delay = other.spawnRate * 1000000;
					other.spawn_reset_timer = 0; 
					other.canSpawn = false; 
			}
		}
	}
}


with(obj_round_spawn_origin)
{
	if (other.switchIndex == switchIndex)
	{
		var flag = false; 
		
		for (var i = 0; i < ds_list_size ( other.spawn_locations) ; ++i)
		{
			if( ds_list_find_value(other.spawn_locations, i)  == id ) 
			{
				flag = true
				break; 
			}
		}
		
		if (!flag)
		{ 
			ds_list_add(other.spawn_locations, id)
		}
	} 
	 
} 

