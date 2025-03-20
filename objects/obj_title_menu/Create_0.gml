// Declare Variables
width = 64;
height = 104;

op_border = 8;
op_space = 16;

pos = 0;
menu_level = 0;

// Declare keyboard variables (Handled in Step instead)
up_key = false;
down_key = false;
accept_key = false;
//Declare mouse variables
mouse_xpos = false;
mouse_ypos = false;
mouse_click = false;

// Define menu options using arrays
option = [
    ["Start Game", "Settings", "Quit Game"], // Main Menu
    ["Window Size", "Brightness", "Controls", "Back"], // Settings
    ["Yes", "No"], // Quit Confirmation
    ["Yes", "No"] // Start Game Confirmation
];

// Store Number of Options in Current Menu
op_length = array_length(option[menu_level]);
