if (dialogue_active)
{
    // Typewriter effect
    text_timer += 1;
    if (text_timer >= text_speed)
    {
        text_timer = 0;
        if (text_pos < string_length(dialogue[dialogue_index]))
        {
            text_pos += 1;
        }
    }

    // Advance dialogue on Z or Enter
    if (keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter))
    {
        if (text_pos < string_length(dialogue[dialogue_index]))
        {
            // Finish current line immediately
            text_pos = string_length(dialogue[dialogue_index]);
        }
        else
        {
            // Next line
            dialogue_index += 1;
            text_pos = 0;

            if (dialogue_index >= array_length_1d(dialogue))
            {
                // End of dialogue, you can go to menu or fade
                dialogue_active = false;
                // room_goto(rm_menu);  // optional
            }
        }
    }
}
if (dialogue_index >= array_length_1d(dialogue))
{
    dialogue_active = false;

    // Trigger the credits room automatically
    room_goto(rm_credits);
}
