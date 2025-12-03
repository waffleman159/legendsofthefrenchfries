// SLIDER CONTROL + BACK BUTTON

var mx = device_mouse_x(0);
var my = device_mouse_y(0);

// Start dragging if clicking the handle
if (mouse_check_button_pressed(mb_left)) {
    var handle_x = slider_x + slider_width * volume;
    if (point_distance(mx, my, handle_x, slider_y) <= slider_handle_radius + 4) {
        dragging = true;
    }
}

// While dragging, update volume
if (dragging) {
    volume = clamp((mx - slider_x) / slider_width, 0, 1);
    global.volume = volume; // store globally
}

// When released, stop dragging and save
if (mouse_check_button_released(mb_left)) {
    if (dragging) {
        dragging = false;

        ini_open("settings.ini");
        ini_write_real("audio", "volume", global.volume);
        ini_close();
    }
}

// Press ESC to go back to main menu
if (keyboard_check_pressed(vk_escape)) {
    room_goto(rm_main_menu); // change this to your real menu room if needed
}