//Declare Variables

width = 64;
height = 104;

op_border = 8;
op_space = 16;

pos = 0;

//Pause Menu
option[0, 0] = "Start Game";
option[0, 1] = "Settings";
option[0, 2] = "Quit Game";

//Settings Menu
option[1, 0] = "Window Size";
option[1, 1] = "Brightness";
option[1, 2] = "Controls";
option[1, 3] = "Back";


op_length = 0;
menu_level = 0;

//Declare keyboard variables
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_space);