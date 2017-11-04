/// @description description
// vnycall74@naver.com - http://holykisa.tistory.com

if(isUse)
{
	if(prevY + sprite_height / 2 >= y)
		y += 0.5;
			
	if(!(obj_trap3.y < prevBlock + 32))
		obj_trap3.y += moveBlock;
}