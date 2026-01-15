/// @description Insert description here
// You can write your code in this editor
coins  = 0;
hp     = 100;
hp_max = 100;
team = "enemy";
// VERY CLEAR PLAYER MOVES
moves = [
    { name: "anden is jack", power: 1 },
    { name: "fast food slap",  power: 9 },
    { name: "cinder smash", power:20 }
];
move_speed = 2;


path_start(path_to_follow, move_speed, path_action_continue, true);