/// @description description
// vnycall74@naver.com - http://holykisa.tistory.com

if(check == 0)
	if(y <= prevY + 64)
		y += 4;
	else
	{
		check = -1;
		
		alarm[0] = room_speed * 1;		
		prevY = y;
	}
	
if(check == 1)
	if(y >= prevY - 64)
		y -= 4;
	else
	{
		check = -1;
		
		alarm[1] = room_speed * 1;		
		prevY = y;
	}