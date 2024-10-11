
/* Handle event the player presses space bar */
self.player_state = 1;

self.x_speed = 0; 
self.y_speed =0; 

temp_X = self.x_speed; 
temp_Y = self.y_speed; 

show_debug_message("Attack occurred"); 


self.x_speed = temp_X; 
self.y_speed = temp_Y;  

// Create an instance 
melee_i = instance_create_depth(x+self.width,y,0,obj_melee_attack); 




