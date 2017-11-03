/// @description description
// vnycall74@naver.com - http://holykisa.tistory.com

if(isUse)
	if(instance_exists(obj_trap2))
	{
		if(obj_trap2.y <= room_height + obj_trap2.sprite_height)
			obj_trap2.y += moveSpeed;
		else
			with(obj_trap2)
				instance_destroy();
			
		if(prevY + sprite_height / 2 >= y)
			y += 0.5;
	}