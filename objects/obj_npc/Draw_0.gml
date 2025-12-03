/// DRAW NPC + HINT

/// DRAW NPC + "Press E" hint

// 1) Draw the NPC sprite
draw_self();

// 2) Show "Press E" when player is close and NOT already talking
var p = instance_nearest(x, y, obj_player);

if (p != noone && !talking) {
    if (point_distance(x, y, p.x, p.y) < 40) {
        var hint = "Press E to talk";
        draw_set_color(c_white);
        draw_text(x - string_width(hint) / 2, y - 32, hint);
    }
}
