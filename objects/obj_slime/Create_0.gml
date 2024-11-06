/// @description Slime initialization

// Basic stats
hp = 5;
max_hp = hp;
damage = 1;
knockback_force = 4;
invulnerable = 0;
// Movement variables
move_speed = 1;
chase_speed = 1.5;
detection_radius = 100;
x_speed = 0;
y_speed = 0;
isDead = false; 

// State variables
enum SlimeState {
    IDLE,
    CHASE,
    ATTACK,
    JUMP,
    HURT,
    DEAD
}
state = SlimeState.IDLE;

// Animation variables
image_speed = 0.5;
image_xscale = 2;
image_yscale = 2;


// Animation control
anim_ended = false;
attack_range = 50; // Distance to trigger attack
jump_cooldown = 0;
jump_cooldown_max = room_speed * 3; // Jump every 3 seconds
attack_cooldown = 0;
attack_cooldown_max = room_speed * 2; // Attack every 2 seconds

// Hurt effect variables
flash = false;
flash_duration = 3;
flash_alpha = 0;

hurt_cooldown = 0;
hurt_cooldown_max = 15; // Frames of invincibility after being hit


// Initialize alarm for state changes
alarm[0] = room_speed * irandom_range(2, 4);