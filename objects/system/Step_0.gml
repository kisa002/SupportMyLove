/// @description description
// vnycall74@naver.com - http://holykisa.tistory.com

if(keyboard_check(ord("R")))
	room_restart();

if(room==r_stage5||room==r_stage10){
	if !(instance_exists(o_boss1)||instance_exists(o_boss2)||instance_exists(o_black)){
		room_goto_next();
	}
}
else if(clear1 && clear2)
{
	clear1 = false;
	clear2 = false;
	
	room_goto_next();
}