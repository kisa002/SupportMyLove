/// @description Insert description here
// You can write your code in this editor
if(fade == -1)
{
   if(y <= prevY + 256)
      y += moveSpeed;
   else
      fade = false;
}

if(!fade)
{
   if (image_alpha > 0)
      image_alpha -= 0.015;
   else
      fade = true;
}
else if(fade)
{
   if(image_alpha < 1)
      image_alpha += 0.015;
   else
      fade = false;
}