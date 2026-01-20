// Draw each line
draw_set_halign(fa_center); // horizontal center

for (var i = 0; i < array_length_1d(credits); i++)
{
    var line_y = y_pos + i * line_spacing;
    draw_text(room_width/2, line_y, credits[i]);
    draw_set_halign(fa_center); // center the text
}
