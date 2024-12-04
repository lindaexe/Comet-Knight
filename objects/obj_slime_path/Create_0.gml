/// @description Insert description here
// You can write your code in this editor
var slime1 = instance_create_layer(x, y, "Instances", obj_red_slime);
with (slime1) {
    image_xscale = 2;
    image_yscale = 2;
    isAttacking = true;
    path_start(pth_slime_corridor, 4, path_action_restart, true);
    path_position = 0;
    path_offset = 16;
}


var slime2 = instance_create_layer(x, y, "Instances", obj_red_slime);
with (slime2) {
    image_xscale = 2;
    image_yscale = 2;
    isAttacking = true;
    path_start(pth_slime_corridor2, 4, path_action_restart, true);
    path_position = 0;
    path_offset = 16;
}


var slime3 = instance_create_layer(x, y, "Instances", obj_red_slime);
with (slime3) {
    image_xscale = 2;
    image_yscale = 2;
    isAttacking = true;
    path_start(pth_slime_corridor3, 4, path_action_restart, true);
    path_position = 0;
    path_offset = 16;
}