/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
var i = dialog.count();  

show_debug_message(i)
dialog.addDialog(spr_player_head, "I found a bomb!")
dialog.addDialog(spr_player_head, "I can equip it by pressing [3] key and place it by pressing [space]")
dialog.addDialog(spr_player_head, "I can ignite it by hitting it with my sword or shooting at it!")
dialog.addDialog(spr_player_head, "But I have to stay back or I can get hurt!")