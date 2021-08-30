/// @description Reset trigger for canShoot

if instance_exists(obj_player) //if player exists
{
	if (distance_to_object(obj_player) < 1500)
	{
		instance_create_layer(x, y, "Bullet", obj_enemy_bullet_m); //spawn a bullet
		alarm_set(0, shoot_cooldown); //set shoot cooldown
	}
	alarm_set(0, shoot_cooldown); //set shoot cooldown
}