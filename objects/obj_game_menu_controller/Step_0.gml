
	
if(keyboard_check_pressed(ord("W"))||keyboard_check_pressed(vk_up)){
    cursor_pos = max(0, cursor_pos - 1);
}

//S or DOWN
if(keyboard_check_pressed(ord("S"))||keyboard_check_pressed(vk_down)){
    cursor_pos = min(array_length(menu_items)-1, cursor_pos + 1);
}

//enter or space
if(keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)){
    switch(menu_items[cursor_pos][1]){
        case 0: 
			audio_stop_sound(mus_menu);
			room_goto(Tutorial);
			// transisition screen
			
			
            instance_destroy();
            break;
        case 1:
            room_goto(Credits);          
            break;  
        case 2: 
            game_end();
            break;
    }
}

//mouse controls
var mouse_x_gui = device_mouse_x_to_gui(0);
var mouse_y_gui = device_mouse_y_to_gui(0);

mouse_hover = -1; 

for(var i = 0; i < array_length(menu_items); i++) {
    var text_y = (room_height * 0.6) + (i * menu_spacing);
    
    if(point_in_rectangle(
        mouse_x_gui, 
        mouse_y_gui, 
        room_width/2 - button_width/2, 
        text_y - button_height/2,
        room_width/2 + button_width/2, 
        text_y + button_height/2
    )){
        mouse_hover = i; 
        cursor_pos = i; 
        
        if (mouse_check_button_pressed(mb_left)) {
            switch(menu_items[cursor_pos][1]){
                case 0: 
					audio_stop_sound(mus_menu);
                    room_goto(Tutorial);
                    instance_destroy();
                    break;
                case 1:
                    room_goto(Credits);          
                    break;  
                case 2: 
                    game_end();
                    break;
            }
        }
    }
}
