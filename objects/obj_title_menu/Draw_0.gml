// Dynamically get Width/Height of menu
var _new_w = 0;
for (var i = 0; i < op_length; i++) {
    var _op_w = string_width(option[menu_level][i]);
    _new_w = max(_new_w, _op_w);
}
width = _new_w + op_border * 2;
height = op_border * 2 + string_height(option[menu_level][0]) + (op_length - 1) * op_space;

// Center Menu
x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2 - width / 2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2 - height / 2;

// Draw menu background
//draw_set_color(c_black);
//draw_rectangle(x, y, x + width, y + height, false);

// Draw menu options
draw_set_font(global.font_main);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

for (var i = 0; i < op_length; i++) {
    var _c = (pos == i) ? c_red : c_white;
    draw_text_color(x + op_border, y + op_border + op_space * i, option[menu_level][i], _c, _c, _c, _c, 1);
}
