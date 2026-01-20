/// @description Insert description here
// You can write your code in this editor




// If player touches door, go to next room
if (place_meeting(1216, 2496, obj_player) && can_enter)
{
    room_goto(rm_victory); // Change to the room you want
}


