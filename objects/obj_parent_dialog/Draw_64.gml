/// @description Insert description here
// You can write your code in this editor
if (showDialog) 
{
    // set up variables 
    var txt_x = 6;
    var txt_y = 18;
    var strLength = 32;
    var border = 5;
    var padding = 16;

    // get length of the message 
    var strLength = string_height(current_Dialog.npc_msg);

    // make sure dialog is not taller than sprite 
    if (sprite_get_height(current_Dialog.npc_img) > strLength)
    {
        strLength = sprite_get_height(current_Dialog.npc_img);
    }

    strLength += padding * 2;

    // Calculate text position to the right of sprite
    var spr_width = sprite_get_width(current_Dialog.npc_img);
    var text_start_x = border * 3 + spr_width + padding * 3;
    var available_width = display_get_gui_width() - text_start_x - border * 2;

    draw_set_alpha(alpha);

    draw_set_color(c_black);
    draw_rectangle(border, border + 650, display_get_gui_width() - border, strLength - border + 700, false);

    // make sure sprite exists
    if (current_Dialog.npc_img != -1)
    {
        draw_sprite(current_Dialog.npc_img, 0, border * 3, border + 650 + 25);
        draw_set_color(c_white);

        // Draw text to the right of sprite
        draw_set_halign(fa_left);
        draw_text_ext(text_start_x, txt_y + 655 + 25, 
            current_Dialog.npc_msg + "\nPress [SHIFT] to continue...", 
            16, available_width - padding * 2);
    }

    alpha = lerp(alpha, 1, 0.06);
}