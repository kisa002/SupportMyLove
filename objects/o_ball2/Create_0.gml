/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_player){
<<<<<<< HEAD
	direction=point_direction(x,y,obj_player.x,obj_player.y)+random_range(-30,30);
	speed=5;
	hp=3;
	image_xscale=0;
	image_yscale=0;
=======
	direction=point_direction(x,y,obj_player.x,obj_player.y);
	speed=5;
	hp=2;
>>>>>>> b96be269c410c910bbaf670433eb1e1f71dcfdc3
}
else{
	instance_destroy();
}