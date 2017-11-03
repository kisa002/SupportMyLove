/// @description description
// vnycall74@naver.com - http://holykisa.tistory.com

if(isUse)
{
	if(!place_meeting(obj_move_block.x + (obj_lover.moveSpeed * 2), obj_move_block.y, obj_ground))
		obj_move_block.x += obj_lover.moveSpeed;
	else
		show_debug_message("WRONG");
}

show_debug_message("USE : " + string(isUse));