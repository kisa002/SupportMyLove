/// @description description
// vnycall74@naver.com - http://holykisa.tistory.com

if(isUse)
	if(prevBlock - (obj_lever_block.sprite_height / 2) <= obj_lever_block.y)
	{
		if(image_speed == 0)
			image_speed = 1;
			
		obj_lever_block.y -= blockSpeed;
	}
	
if(image_index == 1 && image_index == 9)
{
	image_index = 9;
	image_speed = 0;
}