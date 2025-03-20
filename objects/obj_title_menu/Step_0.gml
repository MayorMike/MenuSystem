// Get inputs
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter);
mouse_xpos = mouse_x;
mouse_ypos = mouse_y;
mouse_click = mouse_check_button_pressed(mb_left);

// Move Through Menu (Keyboard)
pos += down_key - up_key;
if (pos >= op_length) pos = 0;
if (pos < 0) pos = op_length - 1;

// Detect Mouse Hover
for (var i = 0; i < op_length; i++) {
    var option_y = y + op_border + (i * op_space);
    if (mouse_x >= x && mouse_x <= x + width && mouse_y >= option_y && mouse_y <= option_y + string_height(option[menu_level][0])) {
        pos = i; // Set selected option based on hover
        if (mouse_click) accept_key = true; // Left-click acts as select
    }
}

// Handle Menu Selection
if (accept_key) {	
    var _prev_menu = menu_level;
    
    switch (menu_level) {
        case 0: // Main Menu
            switch (pos) {
                case 0: menu_level = 3; break; // Start Game
                case 1: menu_level = 1; break; // Settings
                case 2: menu_level = 2; break; // Quit Game
            }
            break;
        
        case 1: // Settings Menu
            if (pos == 3) menu_level = 0; // Back to Main Menu
            break;
        
        case 2: // Quit Game
            if (pos == 0) game_end(); // Yes
            if (pos == 1) menu_level = 0; // No -> Back to Main Menu
            break;
        
        case 3: // Start Game Confirmation
            if (pos == 0) room_goto_next(); // Yes -> Next Room
            if (pos == 1) menu_level = 0; // No -> Back to Main Menu
            break;
    }
    
    // Reset position if we switched menus
    if (_prev_menu != menu_level) {
        pos = 0;
        op_length = array_length(option[menu_level]);
    }
}
