/// STEP – Turn-based battle controller

// Make sure references are still valid
if (!instance_exists(player)) player = instance_find(obj_player, 0);
if (!instance_exists(enemy))  enemy  = instance_find(Object21, 0);

// If either is missing, kill the battle
if (!instance_exists(player) || !instance_exists(enemy)) {
    show_debug_message("BATTLE: player or enemy missing, destroying obj_battle");
    instance_destroy();
    exit;
}

// Debug: show state each step (optional but helpful)
show_debug_message("BATTLE STATE: " + string(state));

switch (state)
{
    // -----------------------
    case "player_turn":
        message = "Choose a move!";

        if (keyboard_check_pressed(vk_up)) {
            selected_move = max(selected_move - 1, 0);
        }

        if (keyboard_check_pressed(vk_down)) {
            selected_move = min(selected_move + 1, array_length(player.moves) - 1);
        }

        if (keyboard_check_pressed(vk_enter)) {
            var move = player.moves[selected_move];

            enemy.hp = max(enemy.hp - move.power, 0);
            message = "Player used " + move.name + "!";

            show_debug_message("PLAYER ATTACK: " + move.name + " → enemy.hp = " + string(enemy.hp));

            if (enemy.hp <= 0) {
                state = "win";
                show_debug_message("STATE CHANGE: win");
            } else {
                wait_timer = 30;
                state = "player_wait";
            }
        }
    break;

    // -----------------------
    case "player_wait":
        wait_timer--;
        if (wait_timer <= 0) {
            state = "enemy_turn";
            show_debug_message("STATE CHANGE: enemy_turn");
        }
    break;

    // -----------------------
    case "enemy_turn":
        var choice = irandom(array_length(enemy.moves) - 1);
        var move = enemy.moves[choice];

        player.hp = max(player.hp - move.power, 0);
        message = "Enemy used " + move.name + "!";

        show_debug_message("ENEMY ATTACK: " + move.name + " → player.hp = " + string(player.hp));

        if (player.hp <= 0) {
            state = "lose";
            show_debug_message("STATE CHANGE: lose");
        } else {
            wait_timer = 30;
            state = "enemy_wait";
        }
    break;

    // -----------------------
    case "enemy_wait":
        wait_timer--;
        if (wait_timer <= 0) {
            state = "player_turn";
            show_debug_message("STATE CHANGE: player_turn");
        }
    break;

break;

    // -----------------------
    // PLAYER wins → destroy ENEMY
    case "win":
        message = "You Win!"
		move_speed = 5;

        
if (!player_destroyed && instance_exists(player)) {
            show_debug_message("LOSE: destroying PLAYER instance id " + string(player.id));
            with (player) instance_destroy();
            player_destroyed = true;
        }
		
        if (end_timer < 0) {
            end_timer = room_speed;
            state = "battle_end";
            show_debug_message("STATE CHANGE: battle_end");
        }
    break;

    // -----------------------
    // PLAYER loses → destroy PLAYER
    case "lose":
        message = "You Lose...";

        
  if (!enemy_destroyed && instance_exists(enemy)) {
            show_debug_message("WIN: destroying ENEMY instance id " + string(enemy.id));
            with (enemy) instance_destroy();
            enemy_destroyed = true;
        }
        if (end_timer < 0) {
            end_timer = room_speed;
            state = "battle_end";
            show_debug_message("STATE CHANGE: battle_end");
        }
    break;

    // -----------------------
    case "battle_end":
    // DEBUG: how many players/enemies are in the room?
    show_debug_message("BATTLE_END: players=" + string(instance_number(obj_player))
        + " enemies=" + string(instance_number(Object21)));

    end_timer--;
    if (end_timer <= 0) {
        show_debug_message("BATTLE END: destroying obj_battle");
        instance_destroy();
    }
break;
}
