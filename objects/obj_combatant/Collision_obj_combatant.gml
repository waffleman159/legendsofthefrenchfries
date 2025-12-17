// Collision with obj_combatant

// Don't start multiple battles
if (instance_exists(obj_battle)) exit;

// Don't fight same team
if (team == other.team) exit;

// Create battle controller
var b = instance_create_layer(0, 0, "Instances", obj_battle);

// Assign fighters
b.player = (team == "player") ? id : other;
b.enemy  = (team == "player") ? other : id;







