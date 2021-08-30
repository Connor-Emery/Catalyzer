/// @description When enemy bullet is created

if (room == room_forest)
{
	sprite_index = spr_enemy_bullet_m_forest;
}
if (room == room_ice)
{
	sprite_index = spr_enemy_bullet_m_ice;
}
if (room == room_desert)
{
	sprite_index = spr_enemy_bullet_m_desert;
}

image_xscale = 0.1; //scale sprite x
image_yscale = 0.1; //scale sprite y

if instance_exists(obj_player) //if player exists
{
	direction = scr_predict(obj_enemy_m, obj_player, bullet_speed);
	image_angle = 270 + direction;
}
else
{
	direction = 270; //set direction
}

if !audio_is_playing(snd_enemy_shoot_2)
{
	audio_play_sound(snd_enemy_shoot_2, 1, false); //play enemy shoot sound
}
speed = bullet_speed; //set bullet speed

alarm_set(0, bullet_lifetime);