/// @description Move
// vnycall74@naver.com - http://holykisa.tistory.com
if!(instance_exists(o_hand)){
	if(keyboard_check(vk_left))
	{
		if(!place_meeting(x - moveSpeed, y + sprite_height / 2 - 20, obj_ground))
		{
			x -= moveSpeed;
		}
	
		image_speed = 1;
	
		image_xscale = 1;
	}
	else
		image_speed = 0;

	if(keyboard_check(vk_right))
	{
		if(!place_meeting(x + moveSpeed, y + sprite_height / 2 - 20, obj_ground) && !place_meeting(x, y - (sprite_height / 2) - 1, obj_move_block))
			x += moveSpeed;
		
		image_speed = 1;
	
		image_xscale = 1;
	}
	else
		image_speed = 0;
		
	if(keyboard_check(vk_up))
	{
		if(!place_meeting(x, y - (sprite_height / 2) - 1, obj_ground))
		{
			if(!isJump || doubleJump)
			{
				if(doubleJump)
				{
					vspeed = jumpMax;
					doubleJump = false;
				}
				if(vspeed==0)
					vspeed=-4;
				vspeed -= jumpSpeed;		
				gravity = 1;
			}
		}
		else
		{
			isJump = true;		
		
			vspeed = 0;
			gravity = 1;
		}
	}

	if(keyboard_check_released(vk_up))
	{
		if(!isJump)
			if(vspeed < 0)
			{
				isJump = true;
		
				if(doubleJump)
					doubleJump = false;
			}
	}
}
//show_debug_message(doubleJump);

if(vspeed < jumpMax)
{
	if(isJump && doubleJump)
		doubleJump = false;
		
	isJump = true;	
	vspeed = jumpMax;
}

if(place_meeting(x, y + vspeed, obj_ground))
{
	gravity = 0;
	vspeed = 0;
	
	isJump = false;
	
	move_contact_solid(270, -1);
}

if(place_meeting(x, y + vspeed, obj_move_block))
{
	gravity = 0;
	vspeed = 0;
	
	isJump = false;
}

if(!place_meeting(x, y, obj_ground)) && !place_meeting(x, y, obj_move_block)
	gravity = 1;

if(place_meeting(x, y - vspeed, obj_block1) || place_meeting(x, y - vspeed, obj_block2) || place_meeting(x, y - vspeed, obj_block3) || place_meeting(x, y - vspeed, obj_block4))
{
	if(instance_exists(obj_block1))
		block = instance_place(x, y - vspeed, obj_block1);
	else if(instance_exists(obj_block2))
		block = instance_place(x, y - vspeed, obj_block2);
	else if(instance_exists(obj_block3))
	{
		block = instance_place(x, y - vspeed, obj_block3);
		block.hit = true;
	}
	else{
		block = instance_place(x, y - vspeed, obj_block4);
		block.hit = true;
	}
		
	if(!block.isMove)
		block.isMove = true;
	if (vspeed<0)
		vspeed=0;
}

if(place_meeting(x, y, obj_lever1) || place_meeting(x, y, obj_lever2) || place_meeting(x, y, obj_lever3) || place_meeting(x, y, obj_lever4))
{
	if(keyboard_check(vk_down))
		if(!lever_checked)
		{
			lever_checked = true;
	
			if(instance_exists(obj_lever1))
			{
				lever = instance_place(x, y, obj_lever1);
			}
			else if(instance_exists(obj_lever4))
			{
				lever = instance_place(x, y, obj_lever4);
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
	
			if(instance_exists(obj_lever1) || instance_exists(obj_lever3) || instance_exists(obj_lever4))
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

if(place_meeting(x, y, obj_trap2))||place_meeting(x,y,obj_trap4)||place_meeting(x,y,o_ball)
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

if(place_meeting(x, y, obj_spring))
	vspeed = -22;
