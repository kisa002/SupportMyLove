/// @description Move
// vnycall74@naver.com - http://holykisa.tistory.com

x += moveSpeed;

if(place_meeting(x, y + 4, obj_block1) || place_meeting(x, y + 4, obj_block2))
{
	y -= 4;
	
	moveSpeed = moveSpeed + 1;
}
else if(moveSpeed != 1.7)
	moveSpeed = 1.7;

if(place_meeting(x, y + vspeed, obj_ground) || place_meeting(x, y + vspeed, obj_block1) || place_meeting(x, y + vspeed, obj_block2) || place_meeting(x, y + vspeed, obj_move_block))
{
	vspeed = 0;	
	gravity = 0;
	
	if(!(place_meeting(x, y + vspeed, obj_lever_block) || place_meeting(x, y + vspeed, obj_lever_block1) || place_meeting(x, y + vspeed, obj_lever_block2)|| place_meeting(x, y + vspeed, obj_move_block)))
		move_contact_solid(270, -1);
}
else
	gravity = 0.5;
	
if(place_meeting(x, y, obj_trap) || place_meeting(x, y, obj_trap2))
	instance_destroy();
	
if(place_meeting(x, y, obj_scaffolding2))
{
	scaffolding = instance_place(x, y, obj_scaffolding2);
	
	scaffolding.isUse = true;
}

if(x >= room_width + (sprite_width / 2))
{
	system.clear2 = true;
	instance_destroy();
}

if(place_meeting(x, y, obj_lever_block) || place_meeting(x, y, obj_lever_block1) || place_meeting(x, y, obj_lever_block2))
	instance_destroy();