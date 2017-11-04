/// @description description
// vnycall74@naver.com - http://holykisa.tistory.com

if(isUse)
	image_speed = 1;
else
{
	image_speed = -1;
	
	if(image_index == 0 || image_index == 1)
	{
		image_index = 0;
		image_speed = 0;
	}
}