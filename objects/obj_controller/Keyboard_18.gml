/// @description Cheat Codes

if keyboard_check_pressed(ord("N")) //press Alt + N to go to next room
{
	room_goto_next();
}
if keyboard_check_pressed(ord("B")) //press Alt + B to change to rapid-fire
{
	obj_player.shoot_cooldown = 1;
}
if keyboard_check_pressed(ord("C")) //press Alt + C to change to mega-shot
{
	obj_player.shot_type = obj_player_bullet_chungus;
}
