// FADE LOGIC
if (global.fade_active)
{
    global.fade_alpha += 0.02;
    if (global.fade_alpha > 1) global.fade_alpha = 1;

    // When fade finishes, start dialogue
    if (global.fade_alpha >= 1 && !dialogue_active)
    {
        dialogue_active = true;
    }
}

// DIALOGUE LOGIC
if (dialogue_active)
{
    text_timer += 1;

    if (text_timer >= text_speed)
    {
        text_timer = 0;
        if (text_pos < string_length(dialogue[dialogue_index]))
        {
            text_pos += 1;
        }
    }

    if (keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter))
    {
        if (text_pos < string_length(dialogue[dialogue_index]))
        {
            text_pos = string_length(dialogue[dialogue_index]);
        }
        else
        {
            dialogue_index += 1;
            text_pos = 0;

            if (dialogue_index >= array_length_1d(dialogue))
            {
                room_goto(rm_victory);
            }
        }
    }
}





