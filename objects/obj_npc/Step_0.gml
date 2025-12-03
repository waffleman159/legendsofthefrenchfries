/// @description Insert description here
// You can write your code in this editor

/// Handle dialogue progression

if (talking) {
    // Go to next line on SPACE
    if (keyboard_check_pressed(vk_space)) {
        dialog_index += 1;

        // End of dialogue?
        if (dialog_index >= array_length(dialogue)) {
            talking = false;
            dialog_index = 0;
        }
    }
}

