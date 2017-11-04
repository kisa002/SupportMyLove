/// @description Insert description here
// You can write your code in this editor
if (hp==0){
	instance_destroy();
}
if(x<other.x||other.x+32<x){
	direction = (180 - direction ) % 360;
}
else{
	direction = (360 - direction) % 360;
}
x=xprevious;
y=yprevious;
hp-=1;