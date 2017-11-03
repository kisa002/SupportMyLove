/// @description Move
// vnycall74@naver.com - http://holykisa.tistory.com

x += moveSpeed;

if(place_meeting(x, y + 4, obj_block))
	y -= 4;

if(place_meeting(x, y + vspeed, obj_ground) || place_meeting(x, y + vspeed, obj_block))
{
	vspeed = 0;	
	gravity = 0;
	
	move_contact_solid(270, -1);
}
else
	gravity = 0.5;