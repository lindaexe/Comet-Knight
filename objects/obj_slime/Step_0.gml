// Damage dealt on slime
if place_meeting( x, y, obj_parent_damage)
{
	var damage_item = instance_place(x,y,obj_parent_damage);
	hp = max(0, hp - damage_item.damage);
	instance_destroy(obj_parent_damage);
	
	if(hp == 0){
		isDead = true;
		state = SlimeState.DEAD;
		if(sprite_index != spr_slime_die){
			sprite_index = spr_slime_die;
			image_index = 0;
			image_speed = 0.6;
			alarm[3] = room_speed * 0.5;
		}
	}
}

// State machine
switch(state) {
    case SlimeState.IDLE:
        sprite_index = spr_slime_idle;
        image_speed = 0.5;
        
        if (distance_to_object(obj_player) < detection_radius) {
            state = SlimeState.CHASE;
        }
       
        break;
        
    case SlimeState.CHASE:
        // Chase if not dead
        if (!isDead) {
			if (instance_exists(obj_player)) {
	            var dist_to_player = distance_to_object(obj_player);
            
	            // Decide whether to attack or jump
	            if (dist_to_player < attack_range && attack_cooldown <= 0) {
	                state = SlimeState.ATTACK;
	                sprite_index = spr_slime_attack;
	                image_index = 0;
	                image_speed = 0.7;
	                attack_cooldown = attack_cooldown_max;
	            } 
	            else if (jump_cooldown <= 0 && dist_to_player < detection_radius) {
	                state = SlimeState.JUMP;
	                sprite_index = spr_slime_jump;
	                image_index = 0;
	                image_speed = 0.6;
	                jump_cooldown = jump_cooldown_max;
	            }
            
	            // Move towards player
	            var dir = point_direction(x, y, obj_player.x, obj_player.y);
	            x_speed = lengthdir_x(chase_speed, dir);
	            y_speed = lengthdir_y(chase_speed, dir);
            
	            if (dist_to_player > detection_radius * 1.5) {
	                state = SlimeState.IDLE;
	            }
	        }
		}
		break;
    
        
    case SlimeState.ATTACK:
        // Only process attack if not dead
        if (!isDead) {
	        x_speed = 0;
			y_speed = 0;
        }
        break;
        
    case SlimeState.JUMP:
        // Only process jump if not dead
        if (!isDead) {
	         if (image_index >= image_number - 1) {
	            state = SlimeState.CHASE;
	        }
        
	        // Add extra movement during jump animation
	        if (instance_exists(obj_player)) {
	            var dir = point_direction(x, y, obj_player.x, obj_player.y);
	            x_speed = lengthdir_x(chase_speed * 1.5, dir);
	            y_speed = lengthdir_y(chase_speed * 1.5, dir);
	        }
	        
        }
        break;
        
    case SlimeState.HURT:
        x_speed = 0;
        y_speed = 0;
		flash = true;
        break;
        
    case SlimeState.DEAD:
        x_speed = 0;
        y_speed = 0;
        break;
}

// Only apply movement if not dead
if (state != SlimeState.DEAD) {
    // Apply movement
    x += x_speed;
    y += y_speed;

    // Wall collision
    if (place_meeting(x, y, obj_wall)) {
        x -= x_speed;
        y -= y_speed;
        x_speed *= -1;
        y_speed *= -1;
    }
}