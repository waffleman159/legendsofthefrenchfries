/// CREATE – Battle controller

// Get references by object type
player = instance_find(obj_player, 0);
enemy  = instance_find(Object21, 0);

// Sanity: if either is missing, bail
if (!instance_exists(player) || !instance_exists(enemy)) {
    show_debug_message("BATTLE ERROR: player or enemy not found.");
    instance_destroy();
    exit;
}

// Debug: print which object types we grabbed
show_debug_message("BATTLE INIT: player is " + object_get_name(player.object_index));
show_debug_message("BATTLE INIT: enemy is "  + object_get_name(enemy.object_index));

// If they are accidentally swapped, auto-fix it
if (player.object_index == Object21 && enemy.object_index == obj_player) {
    show_debug_message("BATTLE FIX: swapping player/enemy references");
    var tmp = player;
    player  = enemy;
    enemy   = tmp;
}

// Turn state
state = "player_turn";  // "player_turn", "player_wait", "enemy_turn", "enemy_wait", "win", "lose", "battle_end"

// Move selection
selected_move = 0;

// Message display
message = "";

// Delay timer
wait_timer = 2;

player_destroyed = false;
enemy_destroyed  = false;

end_timer = -1;





