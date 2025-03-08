//Get inputs
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter);

//Store Number of Options in Current Menu
op_length = array_length(option[menu_level]);

//Move Through Menu
pos += down_key - up_key;
if pos >= op_length {pos = 0}
if pos < 0 {pos = op_length - 1}


//using the options
if accept_key  {	
	var _sml = menu_level;
	switch(menu_level){
		
		//Main Menu
		case 0:
		switch(pos)
		{
			//Start Game
			case 0: menu_level = 3; break;
			//Settings
			case 1: menu_level = 1; break;
			//Quit Game	
			case 2: menu_level = 2; break;
		}
		break;
		
		//Settings
		case 1:
			switch(pos) {
				//Window Size
				case 0: break;
				//Brightness
				case 1: break;
				//Controls
				case 2: break;
				//Back
				case 3: menu_level = 0; break;
		}
		break;
		
		//Quit Game - Yes or no?
		case 2:
			switch(pos) {
				//Yes
				case 0: game_end();
				//No
				case 1: menu_level = 0; break;
			}
			break;
			
		//Start Game - Yes or No?
		case 3:
			switch(pos) {
				//Yes
				case 0: room_goto_next(); break;
				//No
				case 1: menu_level = 0; break;
			}
			break;
	}
		
	//Set POsition Back	
	if _sml != menu_level {pos = 0};
	//Correct Option Length
	op_length = array_length(option[menu_level]);
}