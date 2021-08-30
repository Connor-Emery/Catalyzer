/// @description When player's bullet collides with facility

other.hp -= 1; //reduce facility hp by 1
if (other.hp == 0) //if facility has no hp
{
	instance_destroy(other); //destroy facility
}
instance_destroy(self); //destroy self