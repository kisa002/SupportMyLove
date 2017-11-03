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
		
		vspeed -= 1;		
		gravity = 0.5;
	}
	
if(keyboard_key_release(vk_up))
	if(vspeed != 0)
		isJump = false;

if(vspeed < -7)
	vspeed = -7;

if(keyboard_check(vk_down))
	y += jumpSpeed;

if(place_meeting(x, y + vspeed, obj_ground))
{
	isJump = false;

	vspeed = 0;	
	gravity = 0;
}

show_debug_message(isJump);