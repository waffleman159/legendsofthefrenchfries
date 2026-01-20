if (dialogue_active)
{
    // Text box
    draw_set_color(c_black);
    draw_rectangle(32, room_height - 128, room_width - 32, room_height - 32, false);

    draw_set_color(c_white);
    draw_rectangle(36, room_height - 124, room_width - 36, room_height - 36, true);

    // Draw text
    draw_text(
        64,
        room_height - 104,
        string_copy(dialogue[dialogue_index], 1, text_pos)
    );
}

