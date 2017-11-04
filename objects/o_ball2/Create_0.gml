/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_player){
	direction=point_direction(x,y,obj_player.x,obj_player.y)+random_range(-30,30);
	speed=5;
	hp=3;
	image_xscale=0;
	image_yscale=0;
}
else{
	instance_destroy();
}