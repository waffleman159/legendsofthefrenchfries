/// @description Insert description here
// You can write your code in this editor

global.fade_out = false;
global.fade_alpha = 0;

dialogue_active = false;
dialogue_index = 0;
text_pos = 0;
text_speed = 1;
text_timer = 0;

dialogue[0] = "Heh..."
dialogue[1] = "Guess this is it."
dialogue[2] = "You really are determined."
dialogue[3] = "..."
dialogue[4] = "Take care of this world for me."
if (!variable_global_exists("fade_active")) global.fade_active = false;

if (global.fade_active)
{
    global.fade_alpha += 0.02;
    global.fade_alpha = min(global.fade_alpha, 1);
}





