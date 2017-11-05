///callback_set([script],[arg0],[arg1],...)
if (argument_count >= 1) {
 __callback_script = argument[0];
 __callback_arguments = max(argument_count - 1, 0);

 for (var i = 0; i < __callback_arguments; ++i)
  __callback_argument[i] = argument[i + 1];
} else {
 __callback_script = -1;
}



