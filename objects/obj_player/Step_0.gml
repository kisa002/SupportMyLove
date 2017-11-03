/// @description Move
// vnycall74@naver.com - http://holykisa.tistory.com

if(keyboard_check(vk_left))
	x -= moveSpeed;
else if(keyboard_check(vk_right))
	x += moveSpeed;

if(keyboard_check(vk_up))
	if(!isJump)
	{
		//isJump = true;
		
		vspeed -= jumpSpeed;		
		gravity = 0.5;
	}
else if(keyboard_key_release(vk_up))
	if(vspeed != 0)
		isJump = false;

if(vspeed < -7)
{
	isJump = true;
	
	vspeed = -7;
}

if(place_meeting(x, y - vspeed - 2, obj_ground))
{
	isJump = false;
	
	vspeed = 0;	
	gravity = 0.5;
}

if(place_meeting(x, y + vspeed, obj_ground))
{
	isJump = false;

	vspeed = 0;	
	gravity = 0;
	
	move_contact_solid(270, -1);
}

if(place_meeting(x, y - vspeed, obj_block1) || place_meeting(x, y - vspeed, obj_block2))
{
	if(instance_exists(obj_block1))
		block = instance_place(x, y - vspeed, obj_block1);
	else
		block = instance_place(x, y - vspeed, obj_block2);
		
	if(!block.isMove)
		block.isMove = true;
}

if(place_meeting(x, y, obj_lever1) || place_meeting(x, y, obj_lever2))
{
	if(!lever_checked)
	{
		lever_checked = true;
	
		if(instance_exists(obj_lever1))
			lever = instance_place(x, y, obj_lever1);
		else
			lever = instance_place(x, y, obj_lever2);
	
		lever.isUse = !lever.isUse;
	
		lever.image_xscale = lever.image_xscale * -1;
	}
}
else
	lever_checked = false;