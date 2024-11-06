/// @description Insert description here
// You can write your code in this editor
// Alarm[0] - State change timer
if (state == SlimeState.IDLE) {
    // Random chance to change direction
    x_speed = random_range(-move_speed, move_speed);
    y_speed = random_range(-move_speed, move_speed);
}
alarm[0] = room_speed * irandom_range(2, 4);

state = SlimeState.IDLE;