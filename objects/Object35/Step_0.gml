if (hp <= 0 && !dead)
{
    dead = true;
    speed = 0;
    image_speed = 0;
  instance_create_layer(1216, 2496, "Instances", obj_door);



    // Destroy the boss
   
    repeat (12)
    {
        effect_create_above(
            ef_explosion,
            x + irandom_range(-32, 32),
            y + irandom_range(-32, 32),
            1,
            c_red
        );
    }

  
    alarm[0] = room_speed * 2;
}


if (hp <= 0 && !dead)
{
    dead = true;

    // Trigger fade
    global.fade_active = true;
    global.fade_alpha = 0;

    // DO NOT change room here
    // DO NOT destroy controller
 
}







