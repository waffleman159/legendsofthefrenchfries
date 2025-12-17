// This variable is called
// move_speed and stores
// the movement speed of the
// player. The speed is in
// pixels-per-second.
move_speed = 3;

team = "player";

// ENEMY – Create

hp     = 40;
hp_max = 40;

// VERY CLEAR ENEMY MOVES
moves = [
    { name: "Slime Bite", power: 6 },
    { name: "Slime Slap", power: 8 }
];

// Facing direction in degrees:
// 0 = right, 90 = up, 180 = left, 270 = down
facing = 270; // default (up), pick whatever you want
