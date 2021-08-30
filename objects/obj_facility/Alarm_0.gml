/// @description Reset trigger for spawner

if instance_exists(obj_player) && distance_to_object(obj_player) < 2500
{
	if (instance_number(obj_enemy_m) < 10) //if there are less than 10 enemies present
	{
		instance_create_layer(x, y, "Enemy", obj_enemy_m); //spawn an enemy
		audio_play_sound(snd_enemy_spawn, 2, false);
	}
}

alarm_set(0, spawn_interval); //set spawn interval