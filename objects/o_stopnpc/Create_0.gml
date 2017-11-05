/// @description Insert description here
// You can write your code in this editor
image_speed=0;
if instance_exists(obj_player){
	image_xscale=(x<obj_player.x)?1:-1;
}
with(o_ball2){
	instance_destroy();
}