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

if(keyboard_check(vk_down))
	y += jumpSpeed;

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

if(place_meeting(x, y - vspeed, obj_block))
{
	block = instance_place(x, y - vspeed, obj_block);
	
	if(!block.isMove)
	{	
		block.isMove = true;
		
		//block.y -= 32;
	}
}