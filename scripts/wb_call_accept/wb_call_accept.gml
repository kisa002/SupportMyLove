///wb_call_accept()
if (_running = 2) {
 if (alarm[11] <= 0) {
  if (_pos < _len) {
   skip = 0;
   event_perform(ev_alarm, 11);
  } else {
   wb_destroy(self);
  }
 } else {
  skip = 1;
 }
}



