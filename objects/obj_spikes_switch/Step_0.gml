/// @description Insert description here
// You can write your code in this editor


// check if switch is on stop it at 6 otherwise stop at 0 
if (self.isOn && image_index == 5)
{
	image_speed = 0
	self.isAttacking = true; 
}
else if(self.isOn == false && image_index == 0)
{
	image_speed = 0; 
	self.isAttacking = false;
	
}




// check all instances of switches check if switch is on or off
with(obj_switch)
{
	if (self.switchIndex == other.switchFind)
	{
		if(other.isOn != self.isOn)
		{
			other.image_speed = 1
			other.isOn = self.isOn
		}
		
		
	}
}