/// @description Insert description here
// You can write your code in this editor

if (hp==0){
	instance_destroy();
}
<<<<<<< HEAD
if(x<other.x-16||other.x+16<x){
	direction = (180 - direction ) % 360;
}
else{
	direction = (360 - direction) % 360;
}
=======
direction=360-direction;
>>>>>>> b96be269c410c910bbaf670433eb1e1f71dcfdc3
x=xprevious;
y=yprevious;
hp-=1;