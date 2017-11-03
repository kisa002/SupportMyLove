/// @description description
// vnycall74@naver.com - http://holykisa.tistory.com

if(isUse)
{
	if(prevBlock1 - (obj_lever_block1.sprite_height / 2) <= obj_lever_block1.y)
	{
		obj_lever_block1.y -= blockSpeed;
		obj_lever_block2.y -= blockSpeed;
	}
}
else
	if(prevBlock1 + (obj_lever_block1.sprite_height / 2) >= obj_lever_block1.y)
	{
		obj_lever_block1.y += blockSpeed;
		obj_lever_block2.y += blockSpeed;
	}