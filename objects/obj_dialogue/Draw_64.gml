if (instance_exists(current_npc)) {
    var txt = current_npc.dialogue[current_npc.dialog_index];

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
    draw_text(margin + 16, h - 40, "[Space] to continue");
}



