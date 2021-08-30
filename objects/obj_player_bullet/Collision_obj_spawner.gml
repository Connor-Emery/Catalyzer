/// @description When player's bullet collides with spawner

other.hp -= 1; //reduce spawner hp by 1
if (other.hp == 0) //if spawner has no hp
{
	instance_destroy(other); //destroy spawner
}
instance_destroy(self); //destroy self