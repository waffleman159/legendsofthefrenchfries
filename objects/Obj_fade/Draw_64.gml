/// @description Insert description here
// You can write your code in this editor



if (global.fade_out)
{
    global.fade_alpha += 0.02;
    global.fade_alpha = min(global.fade_alpha, 1);

    draw_set_alpha(global.fade_alpha);
    draw_set_color(c_black);
    draw_rectangle(0, 0, room_width, room_height, false);
    draw_set_alpha(1);

    if (global.fade_alpha >= 1)
    {
        room_goto(rm_victory);
    }
}




if (dialogue_active)
{
    // Text box
    draw_set_color(c_black);
    draw_rectangle(32, room_height - 128, room_width - 32, room_height - 32, false);

    draw_set_color(c_white);
    draw_rectangle(36, room_height - 124, room_width - 36, room_height - 36, true);

    // Text
    draw_text(
        64,
        room_height - 104,
        string_copy(dialogue[dialogue_index], 1, text_pos)
    );
}
