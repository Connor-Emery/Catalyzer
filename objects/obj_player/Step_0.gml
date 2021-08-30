/// @description Step data for player

scr_player_controls() //run player controls script

if !dashing
{
	speed = clamp(speed, -move_speed, move_speed) //clamp max speed
}
else
{
	speed = clamp(speed, -dash_speed, dash_speed) //clamp max speed
	instance_create_layer(x, y, "Player", obj_player_afterimage); //create afterimage
}

y = clamp(y, sprite_height / 2, room_height-sprite_height / 2); //clamp vertical limits
x = clamp(x, sprite_width / 2, room_width-sprite_width / 2); //clamp horizontal limits