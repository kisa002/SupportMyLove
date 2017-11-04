/// @description Insert description here
// You can write your code in this editor
frame+=1;
if(frame%70==0){
	instance_create_layer(x,y,"Instances",o_ball2);
}
if(!instance_exists(obj_block3)){
	instance_destroy();
	room_goto_next();
}
