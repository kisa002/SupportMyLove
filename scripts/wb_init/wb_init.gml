///wb_init()

global.__wb_exists = false;

globalvar wordbox,lb_none,lb_normal,lb_classic,ss_all,ss_character,ss_word,wb_default;

wordbox=global.__wb_exists;
lb_none=0;
lb_normal=1;
lb_classic=2;
ss_all=0;
ss_character=1;
ss_word=2;
wb_default=-1;

global.__wb_x = 50;
global.__wb_y = 50;
global.__wb_width = room_width - 100;
global.__wb_height = room_height - 100;
global.__wb_linebreak = lb_classic;
global.__wb_showstyle = ss_character;
global.__wb_recent = noone;
global.__wb_color = c_white;
global.__wb_font = f_text;