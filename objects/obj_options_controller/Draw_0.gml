/// DRAW OPTIONS UI (CENTERED)

var center_x = room_width * 0.5;

// Title
var title = "Options";
draw_set_color(c_white);
draw_text(center_x - string_width(title) * 0.5, 100, title);

// Subtitle
var subtitle = "Master Volume";
draw_text(center_x - string_width(subtitle) * 0.5, 140, subtitle);

// Slider background (based on slider_x/slider_width from Create)
draw_set_color(c_dkgray);
draw_rectangle(
    slider_x,
    slider_y - slider_height / 2,
    slider_x + slider_width,
    slider_y + slider_height / 2,
    false
);

// Slider fill
draw_set_color(c_lime);
draw_rectangle(
    slider_x,
    slider_y - slider_height / 2,
    slider_x + slider_width * volume,
    slider_y + slider_height / 2,
    false
);

// Slider handle
var handle_x = slider_x + slider_width * volume;
draw_set_color(c_white);
draw_circle(handle_x, slider_y, slider_handle_radius, false);

// Back message
var back_txt = "Press ESC to return";
draw_set_color(c_white);
draw_text(center_x - string_width(back_txt) * 0.5, slider_y + 80, back_txt);
