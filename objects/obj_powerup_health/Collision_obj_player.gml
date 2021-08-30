/// @description Upon collision with player

if instance_exists(obj_player) && obj_player.hp < 5 //if player exists and has less than 5 hp
{
	obj_player.hp += 1; //add 1 hp to player
}
instance_destroy(self); //destroy self