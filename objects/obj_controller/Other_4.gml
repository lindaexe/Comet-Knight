
show_debug_message("room started")

// create grid for current room

mp_grid_create(0,0, room_width/32, room_height/32, 32,32)

mp_grid_add_instances(grid, obj_path_collide, 1)