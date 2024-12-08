/// @description Insert description here
// You can write your code in this editor
var switchAct = instance_create_layer(x, y, "collision_layer", obj_switch_activator);
with (switchAct) {
    path_start(other.path_asset, 2, path_action_restart, true);
    path_position = other.pth_pos;
    //path_offset = 16;
}


