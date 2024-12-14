/// @Transition detect

if(keyboard_check_pressed(ord("H")))
{
	if(!instance_exists(o_transition))
	{
		var inst = instance_create_layer(x,y,"Instances", o_transition) 
		if (room == Tutorial  )
		{
			inst.target_room = Room1
		}
		else
		{
			inst.target_room = Tutorial
		}
	}
}