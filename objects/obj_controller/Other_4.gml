/// @description When room starts

global.game_over = false; //set gameover to false

if (room == room_forest || room = room_ice || room = room_desert)
{
	global.recent_room = room;
	global.num_catalysts = instance_number(obj_facility);
}

if (room = room_levelselect_forest || room = room_levelselect_ice || room = room_levelselect_desert)
{
	if !audio_is_playing(snd_music_levelselect)
	{
		audio_play_sound(snd_music_levelselect, 1, true);
	}
}
else
{
	audio_stop_sound(snd_music_levelselect);
}

if (room = room_forest)
{
	if !audio_is_playing(snd_music_forest)
	{
		audio_play_sound(snd_music_forest, 3, true);
	}
}
else
{
	audio_stop_sound(snd_music_forest);
}

if (room = room_ice)
{
	if !audio_is_playing(snd_music_ice)
	{
		audio_play_sound(snd_music_ice, 3, true);
	}
}
else
{
	audio_stop_sound(snd_music_ice);
}

if (room = room_desert)
{
	if !audio_is_playing(snd_music_desert)
	{
		audio_play_sound(snd_music_desert, 3, true);
	}
}
else
{
	audio_stop_sound(snd_music_desert);
}

if (room = room_startscreen || room == room_howtoplay || room == room_credits || room == room_level_complete_to_desert || room == room_level_complete_to_ice || room == room_level_complete_to_game_complete || room == room_game_complete)
{
	if !audio_is_playing(snd_music_startscreen)
	{
		audio_play_sound(snd_music_startscreen, 1, true);
	}
}
else
{
	audio_stop_sound(snd_music_startscreen);
}