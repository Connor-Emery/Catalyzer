/// @description Reset trigger for shotgun

if instance_exists(obj_player) && distance_to_object(obj_player) < 2500
{
	center_bullet = obj_enemy_bullet_shotgun;
	instance_create_layer(x, y, "Bullet", center_bullet); //spawn a bullet
}

alarm_set(1, shotgun_interval); //set shotgun interval