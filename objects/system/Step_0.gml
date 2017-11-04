/// @description description
// vnycall74@naver.com - http://holykisa.tistory.com

if(keyboard_check(ord("R")))
	room_restart();
	
if(clear1 && clear2)
{
	clear1 = false;
	clear2 = false;
	
	room_goto_next();
}