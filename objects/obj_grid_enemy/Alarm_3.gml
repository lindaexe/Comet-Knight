/// @description Update path

path_delete(path) // delete current path 
path = path_add() 

// whete to go

target_x = obj_player.x 
target_y = obj_player.y

// use the mp grid, make a path, ride on it 
mp_grid_path(obj_controller.grid,path,x,y, target_x, target_y, false)


// now start path 
path_start(path, 3.5, path_action_stop, true)
// loop 
alarm_set(3,20)