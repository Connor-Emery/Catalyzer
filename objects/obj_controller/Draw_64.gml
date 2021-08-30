/// @description Insert description here

if instance_exists(obj_player)
{
	for (i = 0; i < obj_player.hp; i++)
	{
		draw_sprite(spr_health, 0, (50 + 70 * i), 50);
		draw_text_transformed(30, 100, "Score: " + string(score), 2, 2, 0);
	}
}