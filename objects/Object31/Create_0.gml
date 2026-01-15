/// @description Insert description here
// You can write your code in this editor
coins  = 0;
hp     = 100;
hp_max = 100;
team = "enemy";
// VERY CLEAR PLAYER MOVES
moves = [
    { name: "ghost thing", power: 10 },
    { name: "ghost thing2",  power: 12 },
    { name: "ghost thing3", power: 18 }
];



// The movement speed of the
// enemy along its path.
move_speed = 2;


path_start(path_to_follow, move_speed, path_action_continue, true);


