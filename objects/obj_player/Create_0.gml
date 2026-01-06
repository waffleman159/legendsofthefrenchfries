// This variable is called
// move_speed and stores
// the movement speed of the
// player. The speed is in
// pixels-per-second.
move_speed = 3;

team = "player";

// ENEMY – Create

hp     = 60;
hp_max = 100;

// VERY CLEAR ENEMY MOVES
moves = [
 
	 { name: "Hero Punch", power: 10 },
    { name: "Hero Kick",  power: 12 },
    { name: "Hero Blast", power: 18 }
];

// Facing direction in degrees:
// 0 = right, 90 = up, 180 = left, 270 = down
facing = 270; // default (up), pick whatever you want
