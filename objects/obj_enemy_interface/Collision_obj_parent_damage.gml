/// @description Insert description here
// You can write your code in this editor
if(self.isObstacle == false){ 
self.hitPoints -= other.damage; 
if (destroy_sound != noone){ 
audio_play_sound(destroy_sound,1, false)
} 
} 