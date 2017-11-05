///wb_create_next([wordbox],template,text)
var inst, recent;
if (argument_count = 2) {
 recent = global.__wb_recent;
 inst = wb_create(argument[0], argument[1], 1);
 recent.next = inst;
} else {
 inst = wb_create(argument[1], argument[2], 1);
 argument[0].next = inst;
}
global.__wb_recent = inst;

return inst;



