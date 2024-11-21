// Check for damage from player's sword
if (state != SlimeState.DEAD) {
    // Decrease cooldowns
    if (hurt_cooldown > 0) hurt_cooldown--;
    if (jump_cooldown > 0) jump_cooldown--;
    if (attack_cooldown > 0) attack_cooldown--;

    // Check for damage from player's sword
    if (hurt_cooldown <= 0) {
        var sword = instance_place(x, y, obj_melee_attack);
        if (sword != noone && hp >= 0) {
            hp = max(0, hp - 1); // Prevent hp from going below 0
            hurt_cooldown = hurt_cooldown_max;
            show_debug_message("Damage dealt");
            state = SlimeState.HURT;
            alarm[2] = room_speed * 0.5;
        } else if (hp <= 0) {
			isDead = true;
            state = SlimeState.DEAD;
            
			if (sprite_index != spr_slime_die) {
            // Only set the death animation once
            sprite_index = spr_slime_die;
            image_index = 0;
            image_speed = 0.6;
            alarm[3] = room_speed * 0.5; 
			}
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
    
			// Check if attack animation is at the damage frame
			if (image_index >= 3 && image_index <= 4) {
				if (distance_to_object(obj_player) < attack_range) {
					//damage_entity(obj_player, id, damage, 30)
				}
			}
    
			// Check if attack animation ended
		    if (image_index >= image_number - 1) {
		        state = SlimeState.CHASE;
		        // Add cooldown before next attack
		        attack_cooldown = attack_cooldown_max;
		    }
	    
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