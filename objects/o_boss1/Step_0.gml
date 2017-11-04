/// @description Insert description here
// You can write your code in this editor
frame+=1;
if(frame==80){
	switch(irandom_range(0,2)){
		case 0:{instance_create_layer(x-8,y+30,"Instances",obj_trap4);break;}
		case 1:{instance_create_layer(x-8,y+30,"Instances",o_ball);break;}
		case 2:{instance_create_layer(x-18,y-27,"Instances",obj_turtle);break;}
	}
	frame=0;
}
if(hp<=0){
	instance_destroy();
	room_goto_next();
}