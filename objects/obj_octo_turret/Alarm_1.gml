/// @description Insert description here
// You can write your code in this editor
if(!instance_exists(obj_parent_dialog) && instance_exists(obj_player)){
	var turretDirection = point_direction(x, y, obj_player.x, obj_player.y);
	var bullet = instance_create_layer(x, y, "Instances", obj_fireball_sm);
	bullet.speed = 5;
	bullet.direction = turretDirection;
	bullet.image_angle = turretDirection +90;	
}
alarm[1] = game_get_speed(gamespeed_fps) * 1
