//Declare Variables
var _left = keyboard_check(vk_left);
var _right = keyboard_check(vk_right);
var _up = keyboard_check(vk_up);
var _down = keyboard_check(vk_down);
var _hspd = _right - _left; //horizontal Speed = _right - _left
var _vspd = _down - _up; //Vertical Speed = _down - _up


//Character Movement
if (_hspd !=0 || _vspd !=0) {
	var _spd = 4
	var _dir = point_direction(0, 0, _hspd, _vspd);
	var _xadd = lengthdir_x(_spd, _dir);
	var _yadd = length_y(_spd, _dir);
	x = x + _xadd;
	y = y + _yadd;
}