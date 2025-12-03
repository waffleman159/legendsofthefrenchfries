/// DRAW MAIN MENU (CENTERED BY ROOM)

var center_x = room_width * 0.5;
var center_y = room_height * 0.5;

// vertical spacing between options
var spacing = 40;

// start a bit above center so list is vertically centered-ish
var total_height = (array_length(menu_items) - 1) * spacing;
var start_y = center_y - total_height * 0.5;

for (var i = 0; i < array_length(menu_items); i++) {
    var txt = menu_items[i].name;
    var yy  = start_y + i * spacing;

    var text_w = string_width(txt);
    var xx = center_x - text_w * 0.5; // <-- actual centering

    if (i == selected) {
        draw_set_color(c_yellow);
        draw_text(xx, yy, txt);
        draw_set_color(c_white);
    } else {
        draw_text(xx, yy, txt);
    }
}
