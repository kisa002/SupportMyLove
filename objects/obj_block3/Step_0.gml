/// @description description
// vnycall74@naver.com - http://holykisa.tistory.com

if(isMove)
{
	if(count < 2)
		if(hit)
			if(prevY - (sprite_height / 3) < y)
				y -= 2;
			else
			{
				hit = false;
				
				count ++;
			}
		else
			if((prevY + (sprite_height / 3) > y))
				y += 2;
			else
			{
				isMove = false;
				hit = false;
			}
	else
		instance_destroy();
}