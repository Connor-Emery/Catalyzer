/// @description When enemy bullet is created

if (room == room_forest)
{
	sprite_index = spr_enemy_bullet_forest;
}
if (room == room_ice)
{
	sprite_index = spr_enemy_bullet_ice;
}
if (room == room_desert)
{
	sprite_index = spr_enemy_bullet_desert;
}


image_xscale = 0.1; //scale sprite x
image_yscale = 0.1; //scale sprite y

if instance_exists(obj_player) //if player exists
{
	direction = point_direction(x, y, obj_player.x, obj_player.y); //set direction to player
}
else
{
	direction = 270; //set direction
}

if !audio_is_playing(snd_enemy_shoot)
{
	audio_play_sound(snd_enemy_shoot, 1, false); //play enemy shoot sound
}
speed = bullet_speed; //set bullet speed

alarm_set(0, bullet_lifetime);