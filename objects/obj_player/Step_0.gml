/// Step Event – Player

// ---------------------------
// 1. Freeze player if battle is active
if (instance_exists(obj_battle)) {

    // Stop all velocity and movement
    hspeed = 0;
    vspeed = 0;

    // Optional: switch to idle sprite
    if (sprite_index != spr_player_idle) {
        sprite_index = spr_player_idle;
        image_index = 0;
    }

    // Exit Step Event to prevent normal movement
    exit;
}

// ---------------------------
// 2. Normal movement code (only runs if no battle)

var move_speed = 3;

// Keyboard input
if (keyboard_check(vk_left))  x -= move_speed;
if (keyboard_check(vk_right)) x += move_speed;
if (keyboard_check(vk_up))    y -= move_speed;
if (keyboard_check(vk_down))  y += move_speed;

// ---------------------------
// 3. Update walking animation if moving



//maybe 

//for create

// Movement and battle control
//move_speed = 4;

// Freeze flags (optional, for battle)
//hspeed = 0;
//vspeed = 0;

// Sprites
//spr_player_idle = sprite_get("spr_player_idle"); // or your actual idle sprite
//spr_player_walk = sprite_get("spr_player_walk"); // or your actual walking sprite

// Set initial sprite
//sprite_index = spr_player_idle;
//image_index = 0;




/// INTERACT WITH NPC USING E (more forgiving)

if (keyboard_check_pressed(ord("E"))) {

    // Check in a big circle around the player (radius 48 or 64)
    var npc = collision_circle(x, y, 64, obj_npc, false, true);

    if (npc != noone) {
        npc.talking = true;
        npc.dialog_index = 0;
    }
}

