draw_set_halign(fa_center);
draw_set_valign(fa_top);

// Draw credits text
draw_text(room_width / 2, 237, "Sound Designer: Ken Torres");
draw_text(room_width / 2, 279, "Game Artist: Mykayla Hunter");
draw_text(room_width / 2, 321, "Programmers:");
draw_text(room_width / 2, 363, "Jesse Jimenez");
draw_text(room_width / 2, 405, "Linda Chen");
draw_text(room_width / 2, 447, "Mike Flores Gonzalez");
draw_text(room_width / 2, 489, "Anthony Duong");

// Draw back button with permanent highlight effect
draw_set_valign(fa_middle);

// Always draw highlight
draw_set_alpha(0.3);
draw_rectangle_color(
    room_width/2 - button_width/2,
    518,
    room_width/2 + button_width/2,
    548,
    c_yellow, c_yellow, c_yellow, c_yellow,
    false
);
draw_set_alpha(1);

// Draw the text always in yellow and scaled
draw_set_color(c_yellow);
draw_text_transformed(
    room_width/2,
    531,
    "Back",
    text_scale,
    text_scale,
    0
);

// Reset drawing properties
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);