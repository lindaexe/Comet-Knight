draw_set_halign(fa_left);
draw_set_valign(fa_middle);

//menu items
draw_set_halign(fa_center);
for (var i = 0; i < array_length(menu_items); i++) { 
    var text_y = (room_height * 0.6) + (i * menu_spacing); // Moved down to 60% of room height
    
    var is_selected = (cursor_pos == i || mouse_hover == i);
    var color = is_selected ? c_yellow : c_white;
    var current_scale = is_selected ? 1.2 : 1.0;
    
    //highlight selected text
    if (is_selected) {
        draw_set_alpha(0.3);
        draw_rectangle_color(
            room_width/2 - button_width/2,
            text_y - button_height/2,
            room_width/2 + button_width/2,
            text_y + button_height/2,
            c_yellow, c_yellow, c_yellow, c_yellow,
            false
        );
        draw_set_alpha(1);
    }
    
    // draw menu text
    draw_set_color(color);
    draw_text_transformed(
        room_width/2,
        text_y,
        menu_items[i][0],
        current_scale,
        current_scale,
        0
    );
}