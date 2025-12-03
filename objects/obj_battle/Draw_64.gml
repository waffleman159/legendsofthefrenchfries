/// Draw GUI – Battle HUD

draw_set_color(c_white);

// MESSAGE
draw_text(40, 300, message);

// ---------------------------
// PLAYER HP BAR (only if player exists)
if (instance_exists(player))
{
    draw_text(40, 360, "Player HP: " + string(player.hp));
    draw_rectangle(40, 380, 240, 400, false);

    var player_ratio = player.hp / player.hp_max;
    draw_set_color(c_lime);
    draw_rectangle(40, 380, 40 + (200 * player_ratio), 400, false);

    draw_set_color(c_white);
}

// ---------------------------
// ENEMY HP BAR (only if enemy exists)
if (instance_exists(enemy))
{
    draw_text(350, 60, "Enemy HP: " + string(enemy.hp));
    draw_rectangle(350, 80, 550, 100, false);

    var enemy_ratio = enemy.hp / enemy.hp_max;
    draw_set_color(c_red);
    draw_rectangle(350, 80, 350 + (200 * enemy_ratio), 100, false);

    draw_set_color(c_white);
}

// ---------------------------
// PLAYER MOVE SELECTION (only if player exists + correct state)
if (state == "player_turn" && instance_exists(player))
{
    var menu_y = 420;

    for (var i = 0; i < array_length(player.moves); i++)
    {
        draw_set_color(i == selected_move ? c_yellow : c_white);
        draw_text(40, menu_y, player.moves[i].name);
        menu_y += 30;
    }

    draw_set_color(c_white);
}

// ---------------------------
// WIN / LOSE MESSAGE
if (state == "win")
{
    draw_set_color(c_green);
    draw_text(300, 240, "You Win!");
}
else if (state == "lose")
{
    draw_set_color(c_red);
    draw_text(300, 240, "You Lose...");
}

draw_set_color(c_white);

