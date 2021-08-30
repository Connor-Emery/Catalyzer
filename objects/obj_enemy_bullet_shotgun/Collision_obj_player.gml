/// @description When enemy bullet collides with player

if (!obj_player.dashing)
{
	obj_player.hp -= 1; //decrease player hp
	audio_play_sound(snd_player_hit, 1, false);
	instance_destroy(self); //destroy self
}