/// @description Insert description here
// You can write your code in this editor
frame+=1;
<<<<<<< HEAD
if instance_exists(obj_player){
	if(frame%80==0){
		if(frame%240==0){
			for(dir=0;dir<360;dir+=360/3){
				inst=instance_create_layer(x+128,y+60,"ball",o_ball2);
				inst.direction=dir;
			}
		}
		else{
			instance_create_layer(x+128,y+60,"ball",o_ball2);
		}
	}
=======
if(frame%70==0){
	instance_create_layer(x,y,"Instances",o_ball2);
>>>>>>> b96be269c410c910bbaf670433eb1e1f71dcfdc3
}
if(!instance_exists(obj_block3)){
	instance_destroy();
	room_goto_next();
}
