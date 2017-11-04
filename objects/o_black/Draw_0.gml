/// @description Insert description here
// You can write your code in this editor
if !instance_exists(o_hand){
	if (alpha!=1)
		alpha+=0.01;
	else{
		if (start==1){
			instance_create_layer(192,168,"Instances",o_boss2);
			start=0;
		}
	}
}
draw_set_alpha(alpha);
draw_set_color(c_black);
draw_rectangle(0,0,640,128,false);
draw_set_alpha(1);
draw_set_color(c_white);

layer_background_blend(layer_background_get_id("Background"),merge_colour(c_white,col,alpha));