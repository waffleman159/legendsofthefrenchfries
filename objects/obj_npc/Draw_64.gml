/// @description Insert description here
// You can write your code in this editor
/// DRAW DIALOGUE BOX (if talking)

if (talking) {
    var txt = dialogue[dialog_index];

    var w = display_get_width();
    var h = display_get_height();
    var margin = 16;

    // Background box
    draw_set_alpha(0.7);
    draw_set_color(c_black);
    draw_rectangle(
        margin,
        h - 140,
        w - margin,
        h - margin,
        false
    );
    draw_set_alpha(1);

    // Text
    draw_set_color(c_white);
    draw_text(margin + 16, h - 120, txt);
    draw_text(margin + 16, h - 40, "[SPACE] to continue");
}


