

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