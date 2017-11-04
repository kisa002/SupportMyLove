/// @description Insert description here
// You can write your code in this editor
if (!place_free(x,y+vspeed)){
	move_contact_solid(270,-1);
	gravity=0;
	vspeed=0;
	hspeed=-3;
}