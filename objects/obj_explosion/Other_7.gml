/// @description When explosion animation ends

if instance_exists(obj_player) //if player exists
{
	if (irandom_range(0, 9) == 9) //10% chance to spawn powerup
	{
		var roll = irandom_range(0, 2) //set var roll
		switch (roll)
		{
			case 0: instance_create_layer(x, y, "Player", obj_powerup_firerate); //create firerate powerup
			break;
			case 1: instance_create_layer(x, y, "Player", obj_powerup_movespeed); //create movespeed powerup
			break;
			case 2: instance_create_layer(x, y, "Player", obj_powerup_health); //create health powerup
			break;
		}
	}
}
instance_destroy(self); //destroy self