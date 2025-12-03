/// OPTIONS MENU SETUP

// Load saved volume or default to 1
if (file_exists("settings.ini")) {
    ini_open("settings.ini");
    global.volume = ini_read_real("audio", "volume", 1);
    ini_close();
} else {
    global.volume = 1;
}

// Slider uses local variable
volume = global.volume;

// Slider UI settings
slider_x = 200;
slider_y = 200;
slider_width  = 300;
slider_height = 10;
slider_handle_radius = 12;

// center slider horizontally
slider_x = room_width * 0.5 - slider_width * 0.5;
slider_y = room_height * 0.5;


dragging = false;