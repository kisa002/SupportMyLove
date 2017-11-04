/// @description description
// vnycall74@naver.com - http://holykisa.tistory.com

if(isMove)
{
	if(hit)
		if(prevY - (32) < y)
			y -= 4;
		else
		{
			hit = false;
		}
	else
		if((prevY + (32) > y))
			y += 4;
		else
		{
			isMove = false;
			hit = false;
		}
}

if(place_meeting(x, y + 9, obj_player)){
	//show_message("");
	hit = true;
	isMove=true;
}