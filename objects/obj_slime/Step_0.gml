// Damage dealt on slime
if place_meeting(x, y, obj_parent_damage)
{
    var damage_item = instance_place(x,y,obj_parent_damage);
    hp = max(0, hp - damage_item.damage);
    
    // Calculate knockback direction
    var knock_dir = point_direction(damage_item.x, damage_item.y, x, y);
    knockback_x = lengthdir_x(knockback_speed, knock_dir);
    knockback_y = lengthdir_y(knockback_speed, knock_dir);
    
    // Change state to hurt
    state = SlimeState.HURT;
    
    instance_destroy(obj_parent_damage);
    
    if(hp <= 0){
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

if (place_meeting(x, y, obj_player)) {
    self.hitPoints -= other.damage;
    
    // Slow down the slime
    chase_speed *= 0.5;  
    alarm[4] = room_speed * 2;
    
    self.state = SlimeState.IDLE;
    if (destroy_sound != noone) {
        audio_play_sound(destroy_sound, 1, false);
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
	    // Apply knockback movement
	    x += knockback_x;
	    y += knockback_y;
    
	    // Apply friction to knockback
	    knockback_x *= knockback_friction;
	    knockback_y *= knockback_friction;
    
	    // Return to chase state when knockback is very small
	    if (abs(knockback_x) < 0.1 && abs(knockback_y) < 0.1) {
	        knockback_x = 0;
	        knockback_y = 0;
	        state = SlimeState.CHASE;
	    }
    
	    flash = true;
	    break;
        
    case SlimeState.DEAD:
        x_speed = 0;
        y_speed = 0;
        break;
}


if (state != SlimeState.DEAD) {
    // Apply movement
    var final_x = x_speed;
    var final_y = y_speed;
    
    // Add knockback if in hurt state
    if (state == SlimeState.HURT) {
        final_x = knockback_x;
        final_y = knockback_y;
    }
    
    x += final_x;
    y += final_y;

    // Wall collision
    if (place_meeting(x, y, obj_collidable) || place_meeting(x,y,obj_thorn) ) {
        x -= final_x;
        y -= final_y;
        
        if (state == SlimeState.HURT) {
            knockback_x *= -0.5;
            knockback_y *= -0.5;
        } else {
            x_speed *= -1;
            y_speed *= -1;
        }
    }
}