draw_set_halign(fa_center);
draw_set_valign(fa_top);

// Draw credits text
draw_text(room_width / 2, 100, "THANKS FOR PLAYING!");
draw_text(room_width / 2, 237, "Sound Designer: Ken Torres");
draw_text(room_width / 2, 279, "Game Artist: Mykayla Hunter");
draw_text(room_width / 2, 321, "Programmers:");
draw_text(room_width / 2, 363, "Jesse Jimenez");
draw_text(room_width / 2, 405, "Linda Chen");
draw_text(room_width / 2, 447, "Mike Flores Gonzalez");
draw_text(room_width / 2, 489, "Anthony Duong");

// Draw back button with permanent highlight effect
draw_set_valign(fa_middle);


// Reset drawing properties
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);