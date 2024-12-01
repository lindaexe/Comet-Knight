// begin shooting
self.shooting = true
alarm[1] =  game_get_speed(gamespeed_fps) * shooting_time
alarm[0] =  game_get_speed(gamespeed_fps) * 0.1
image_speed = 0.25