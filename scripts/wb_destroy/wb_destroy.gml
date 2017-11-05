///wb_destroy(wordbox)
with (argument0) {
 if (surface_exists(surface))
  surface_free(surface);
 if (callbackobject != noone) {
  with (callbackobject)
   event_perform(other.callbackevent, other.callbacknumber);
 }
 if (next != noone)
  wb_run(next);
 instance_destroy();
}



