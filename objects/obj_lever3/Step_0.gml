/// @description description
// vnycall74@naver.com - http://holykisa.tistory.com

if(isUse)
{
	if(!place_meeting(obj_move_block.x + (blockSpeed * 2), obj_move_block.y - (sprite_height / 2), obj_ground))
	{
		obj_move_block.x += blockSpeed;
		
		image_speed = 1;
	}
}

if(image_speed == 1 && image_index == 9)
{
	image_index = 9;
	image_speed = 0;
}