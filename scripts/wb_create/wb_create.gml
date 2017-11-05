///wb_create(template,text)
var inst;
var template = noone;

if (argument[0] = wb_default)
 argument[0] = objWordboxDefault;

inst = instance_create(global.__wb_x, global.__wb_y, objWordboxDummy);

with (inst) {
 width = global.__wb_width;
 height = global.__wb_height;
 text = argument[1];
 next = noone;
 linebreak = global.__wb_linebreak;
 showstyle = global.__wb_showstyle;
 font = global.__wb_font;
 color = global.__wb_color;
 callbackobject = noone;
 callbackevent = 0;
 callbacknumber = 0;
 surface = -1;
 delay = 1;
 _running = 0;
 
 for (var i = 0; i < 10; ++i) {
  action_script[i] = -1;
  action_argument[i] = 0;
 }

 instance_change(argument[0], 1);
}

if (argument_count >= 3) {
 if (argument[2] = 0)
  global.__wb_recent_begin = inst;
} else {
 global.__wb_recent_begin = inst;
}
global.__wb_recent = inst;

return inst;



