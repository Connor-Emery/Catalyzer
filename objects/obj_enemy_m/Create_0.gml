/// @description When enemy is created

if (room == room_forest)
{
	sprite_index = spr_enemy_m_forest;
}
if (room == room_ice)
{
	sprite_index = spr_enemy_m_ice;
}
if (room == room_desert)
{
	sprite_index = spr_enemy_m_desert;
}

image_xscale = 0.25; //scale sprite x
image_yscale = 0.25; //scale sprite y

alarm[0] = shoot_cooldown; //set shoot cooldown