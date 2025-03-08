//Declare Variables

width = 64;
height = 104;

op_border = 8;
op_space = 16;

pos = 0;
//Declare keyboard variables
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_space);

//Main Menu
option[0, 0] = "Start Game";
option[0, 1] = "Settings";
option[0, 2] = "Quit Game";

//Settings Menu
option[1, 0] = "Window Size";
option[1, 1] = "Brightness";
option[1, 2] = "Controls";
option[1, 3] = "Back";

//Quit Game
option[2, 0] = "Yes"
option[2, 1] = "No"

//Start Game
option[3, 0] = "Yes"
option[3, 1] = "No"


op_length = 0;
menu_level = 0;

