/// @description Move
// vnycall74@naver.com - http://holykisa.tistory.com


if(keyboard_check(vk_left))
{
	if(!place_meeting(x - moveSpeed, y , obj_ground))
	{
		x -= moveSpeed;
	
		image_speed = 1;
		image_xscale = -1;
	}
}
else if(keyboard_check(vk_right))
{
	if(!place_meeting(x + moveSpeed, y , obj_ground))
	{
		x += moveSpeed;
	
		image_speed = 1;
		image_xscale = 1;
	}
}
else
{
	image_index = 0;
	image_speed = 0;
}

if(keyboard_check(vk_up))
{
	if(place_meeting(x, y - (sprite_height / 2) + 10, obj_ground))
	{
		vspeed = 0;
		gravity = 0.5;
		
		isJump = true;
	}
	else	
		if(!isJump || doubleJump)
		{
			if(doubleJump)
			{
				vspeed = jumpMax;
				doubleJump = false;
			}
		
			vspeed -= jumpSpeed;		
			gravity = 0.5;
		}
}

if(keyboard_check_released(vk_up))
{
	if(!isJump)
		if(vspeed != 0)
		{
			isJump = true;
		
			if(doubleJump)
				doubleJump = false;
		}
}

if(vspeed < jumpMax)
{
	if(isJump && doubleJump)
		doubleJump = false;
		
	isJump = true;	
	vspeed = jumpMax;
}

if(vspeed != 0)
	if(place_meeting(x, y - vspeed, obj_ground))
	{
		isJump = false;
		move_contact_solids(1, vspeed-2);
		vspeed = 0;	
		gravity = 0;
		//show_message(place_meeting(x,y,obj_ground))
		
		
	}

//if(place_meeting(x, y, obj_ground))
//{
//	isJump = false;
	
//	y -= 1;
//}

if(!place_meeting(x, y, obj_ground))
	gravity = 0.5;

if(place_meeting(x, y - vspeed, obj_block1) || place_meeting(x, y - vspeed, obj_block2) || place_meeting(x, y - vspeed, obj_block3))
{
	if(instance_exists(obj_block1))
		block = instance_place(x, y - vspeed, obj_block1);
	else if(instance_exists(obj_block2))
		block = instance_place(x, y - vspeed, obj_block2);
	else
	{
		block = instance_place(x, y - vspeed, obj_block3);
		block.hit = true;
	}
		
	if(!block.isMove)
		block.isMove = true;
}

if(place_meeting(x, y, obj_lever1) || place_meeting(x, y, obj_lever2) || place_meeting(x, y, obj_lever3))
{
	if(keyboard_check(vk_down))
		if(!lever_checked)
		{
			lever_checked = true;
	
			if(instance_exists(obj_lever1))
			{
				lever = instance_place(x, y, obj_lever1);
			}
			else if(instance_exists(obj_lever3))
			{
				lever = instance_place(x, y, obj_lever3);
			}
			else
			{
				lever = instance_place(x, y, obj_lever2);
				
				lever.isAni = true;
			}
	
			if(instance_exists(obj_lever1) || instance_exists(obj_lever3))
				lever.isUse = true;
			else
				lever.isUse = !lever.isUse;
		}
}
else
	lever_checked = false;
	
if(place_meeting(x, y, obj_scaffolding))
{
	scaffolding = instance_place(x, y, obj_scaffolding);
	
	scaffolding.isUse = true;
}

if(place_meeting(x, y, obj_trap2))
	instance_destroy();
	
if(place_meeting(x, y, obj_double))
{
	double = instance_place(x, y, obj_double);
		
	with(double)
		instance_destroy();
		
	doubleJump = true;
}

if(place_meeting(x, y, obj_trap))
	instance_destroy();

if(x > (room_width + sprite_width / 2))
{
	system.clear1 = true;
	
	instance_destroy();
}