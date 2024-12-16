/// @description Insert description here
// You can write your code in this editor
if(phase == 1){
	if(!isAttacking && instance_exists(obj_player) && obj_player.can_move == true){
		var turretDirection = point_direction(x, y, obj_player.x, obj_player.y);

	
		var bullet = instance_create_layer(x, y, "Instances", obj_fireball_sm);
		bullet.speed = 5;
		bullet.direction = turretDirection;
		bullet.image_angle = turretDirection +90;
	
	}
	alarm[1] = game_get_speed(gamespeed_fps) * 1
}
else{
	if(!isAttacking && instance_exists(obj_player) && obj_player.can_move == true){
		var turretDirection = point_direction(x-96, y, obj_player.x, obj_player.y);
		var turretDirection1 = point_direction(x+96, y, obj_player.x, obj_player.y);
		var turretDirection3 = point_direction(x, y, obj_player.x, obj_player.y);
	
		var bullet = instance_create_layer(x-96, y, "Instances", obj_fireball_sm);
		var bullet1 = instance_create_layer(x+96, y, "Instances", obj_fireball_sm);
		var bullet2 = instance_create_layer(x, y, "Instances", obj_fireball_sm);
		bullet.speed = 5;
		bullet.direction = turretDirection;
		bullet.image_angle = turretDirection +90;
		bullet1.speed = 5;
		bullet1.direction = turretDirection1;
		bullet1.image_angle = turretDirection1 +90;
		bullet2.speed = 5;
		bullet2.direction = turretDirection3;
		bullet2.image_angle = turretDirection3 +90;
	
	}
	alarm[1] = game_get_speed(gamespeed_fps) * 2;
}