/// @description Insert description here
// You can write your code in this editor
//move
x_speed = lengthdir_x(speed, dir)
y_speed = lengthdir_y(speed, dir)

x += x_speed
y += y_speed

//collision
if place_meeting(x,y,obj_wall)
{
	instance_destroy()
}