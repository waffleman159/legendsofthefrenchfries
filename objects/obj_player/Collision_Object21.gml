/// Collision Event: obj_player with Object21

// Check if a battle already exists
if (!instance_exists(obj_battle))
{
    // Create the battle controller
    var b = instance_create_layer(0, 0, "Instances", obj_battle);

    // Pass references to the objects
    b.player = other; // obj_player
    b.enemy  = id;    // Object21

    // Optional: stop player movement
    // (depends on how you control the player)

}
