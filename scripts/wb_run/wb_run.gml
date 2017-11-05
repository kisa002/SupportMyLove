///wb_run([wordbox])
var target;

if (argument_count >= 1) // check no argument
 target = argument[0];
else
 target = global.__wb_recent_begin;

with (target) {
 visible = 1;
 
 surface = surface_create(width, height);
 surface_set_target(surface);
 draw_clear_alpha(0, 0);
 surface_reset_target();
 
 skip = 0;
 _cx = 0;
 _cy = 0;
 _pos = 1;
 _len = string_length(text);
 _spacing = -100;
 _count = -1;
 _running = 1;
 _lineheight = 0;

 with (id) { // for bug fix
  event_perform(ev_alarm, 11);
 }
}

global.__wb_exists = true;


