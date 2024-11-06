// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//damages the enemy or player function
function damage_entity(target_id, source_id, damage, knockback_time) {
    with (target_id) {
        if (invulnerable <= 0) {
            hp -= damage;
            invulnerable = knockback_time;
            flash = true;
            alarm[1] = 10; // Flash duration
            
            // Calculate knockback direction
            var knock_dir = point_direction(source_id.x, source_id.y, x, y);
            x_speed = lengthdir_x(4, knock_dir);
            y_speed = lengthdir_y(4, knock_dir);
               
            return (hp <= 0);
        }
    }
    return false; //Unable to deal damage 
}