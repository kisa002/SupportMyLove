/// @description description
// vnycall74@naver.com - http://holykisa.tistory.com

if(isUse)
{
	if(prevBlock1 - (obj_lever_block1.sprite_height / 2) <= obj_lever_block1.y)
	{
		obj_lever_block1.y -= blockSpeed;
		obj_lever_block2.y -= blockSpeed;
	}
	
	if(isAni)
	{
		image_speed = 1;
	}
}
else
{
	if(prevBlock1 + (obj_lever_block1.sprite_height / 2) >= obj_lever_block1.y)
	{
		obj_lever_block1.y += blockSpeed;
		obj_lever_block2.y += blockSpeed;
	}
	
	if(isAni)
	{
		image_speed = -1;
	}
}

if(isAni)
{
	if(image_speed == -1 && image_index == 1)
	{
		image_speed = 0;
		image_index = 0;
	
		//image_xscale = image_xscale * -1;
		
		isAni = false;
	}
	else
	if(image_speed == 1 && image_index == 8)
	{
		image_speed = 0;
		image_index = 9;
	
		//image_xscale = image_xscale * -1;
		
		isAni = false;
	}
}