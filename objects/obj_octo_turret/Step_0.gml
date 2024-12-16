/// @description Insert description here
// You can write your code in this editor
if( self.hitPoints <= 0 && isInvulnerable == false)
{
	instance_destroy(self)
	instance_create_layer(x,y,"Instances", obj_collect_health)


}