// Move all text upward
y_pos -= scroll_speed;

// Optional: end credits when the last line scrolls off screen
if (y_pos + array_length_1d(credits) * line_spacing < 0)
{
    room_goto(rm_main_menu); // go to menu or restart
}
