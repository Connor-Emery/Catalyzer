/// @description Upon collision with player

if instance_exists(obj_player) //if player exists
{
	obj_player.move_speed = movespeed_boost; //double movespeed
	obj_player.alarm[4] = movespeed_duration; //set powerup duration
}
instance_destroy(self); //destroy self