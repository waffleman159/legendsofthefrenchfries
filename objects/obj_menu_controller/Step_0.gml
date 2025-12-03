// --- ARROW KEY NAVIGATION ---
if (keyboard_check_pressed(vk_down)) {
    selected = (selected + 1) mod array_length(menu_items);
}

if (keyboard_check_pressed(vk_up)) {
    selected = (selected - 1 + array_length(menu_items)) mod array_length(menu_items);
}

// --- CONFIRM SELECTION (ENTER) ---
if (keyboard_check_pressed(vk_enter)) {
    var action = menu_items[selected].action;

    switch (action) {
        case "play":
            room_goto(rm_game); // your game room
        break;

        case "options":
            room_goto(rm_options); // your options room
        break;

        case "quit":
            game_end();
        break;
    }
}