/// @description Insert description here
// You can write your code in this editor
if (distance_to_object(obj_player) < sightRange){
	
	//locates the player's position
	var turretDirection = point_direction(x, y, obj_player.x, obj_player.y);
		
	//rotates the turret towards player
	angle += sin(degtorad( turretDirection - angle)) * rotationSpeed;
		
	if(abs(angle_difference(turretDirection, angle)) < 15){
		shoot_timer--;
		
		if(shoot_timer <= 0){
			shoot_timer = shoot_time;
			var bullet = instance_create_layer(x, y, "Instances", obj_turret_bullet);
			bullet.speed = 5;
			bullet.direction = angle;
		}
	}
		
}