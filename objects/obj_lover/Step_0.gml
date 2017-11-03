/// @description Move
// vnycall74@naver.com - http://holykisa.tistory.com

x += moveSpeed;

if(place_meeting(x, y + 4, obj_block1) || place_meeting(x, y + 4, obj_block2))
	y -= 4;

if(place_meeting(x, y + vspeed, obj_ground) || place_meeting(x, y + vspeed, obj_block1) || place_meeting(x, y + vspeed, obj_block2))
{
	vspeed = 0;	
	gravity = 0;
	
	if(!(place_meeting(x, y + vspeed, obj_lever_block) || place_meeting(x, y + vspeed, obj_lever_block1) || place_meeting(x, y + vspeed, obj_lever_block2)))
		move_contact_solid(270, -1);
}
else
	gravity = 0.5;
	
if(place_meeting(x, y, obj_trap) || place_meeting(x, y, obj_trap2))
	instance_destroy();