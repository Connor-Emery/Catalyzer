/// @description Step data for controller

if instance_exists(obj_player)
{
	if (obj_player.hp <= 0)
	{
		instance_destroy(obj_player); //destroy player
		global.game_over = true;
		room_goto(room_level_failed);
	}
	if (global.num_catalysts <= 0)
	{
		room_goto_next()
	}
}

if keyboard_check_pressed(ord("R")) game_restart(); //press R to restart game
if keyboard_check_pressed(vk_escape) game_end(); //press ESC to close game