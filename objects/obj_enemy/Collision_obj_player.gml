/// @description Insert description here

if (!obj_player.dashing)
{
	other.hp -= 1;
	audio_play_sound(snd_player_hit, 1, false);
	instance_destroy(self);
}