/// @description Insert description here
// You can write your code in this editor
frame+=1;
if(frame==120){
	switch(irandom(2)){
		case 0:{instance_create_layer(x-11,y,"Instances",obj_trap4);break;}
		case 1:{instance_create_layer(x,y,"Instances",obj_trap4);break;}
		case 2:{instance_create_layer(x-13,y-12,"Instances",obj_turtle);break;}
	}
	frame=0;
}
if(hp<=0){
	instance_destroy();
	room_goto_next();
}