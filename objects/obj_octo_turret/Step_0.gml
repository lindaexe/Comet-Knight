/// @description Insert description here
// You can write your code in this editor
if( self.hitPoints <= 0 && isInvulnerable == false)
{
	instance_destroy(self)
	instance_create_layer(x,y,"Instances", obj_octo_turret_death)
	instance_create_layer(x,y,"Instances", obj_collect_health)
	audio_play_sound(sfx_hit, 1, false)
}