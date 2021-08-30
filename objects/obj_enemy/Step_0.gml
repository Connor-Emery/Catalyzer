/// @description Step data for enemy

if instance_exists(obj_player) //if player exists
{
	direction = point_direction(x, y, obj_player.x, obj_player.y); //set direction towards player
}
else //if player doesn't exist
{
	direction = 270; //set direction
}

speed = move_speed; //set movespeed