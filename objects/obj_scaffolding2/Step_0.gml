/// @description description
// vnycall74@naver.com - http://holykisa.tistory.com

if(isUse)
{
	if(prevY + sprite_height / 2 >= y)
		y += 0.5;
			
	if(instance_place(x, y + (8 * 4), obj_trap2))
	{
		trap = instance_place(x, y + (8 * 4), obj_trap2);
		trap.y += moveSpeed;
	}
}