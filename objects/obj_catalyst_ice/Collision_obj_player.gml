/// @description When catalyst collides with player

global.num_catalysts -= 1;
audio_play_sound(snd_catalyst_get, 4, false);
instance_destroy(self);