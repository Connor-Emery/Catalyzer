/// @description Upon collision with player

if instance_exists(obj_player) //if player exists
{
	obj_player.shoot_cooldown = firerate_boost; //double fire rate
	obj_player.alarm[3] = firerate_duration; //set powerup duration
}
instance_destroy(self); //destroy self