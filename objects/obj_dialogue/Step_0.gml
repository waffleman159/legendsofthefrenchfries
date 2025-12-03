// Advance dialogue with Space
if (keyboard_check_pressed(vk_space)) {
    if (instance_exists(current_npc)) {
        with (current_npc) {
            dialog_index += 1;
            if (dialog_index >= array_length(dialogue)) {
                // End of dialogue
                talking = false;
                dialog_index = 0;
                with (obj_dialogue) instance_destroy();
            }
        }
    } else {
        // NPC somehow gone
        instance_destroy();
    }
}

