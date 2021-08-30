/// @description When spawner is destroyed

instance_create_layer(x, y, "Structure", obj_explosion); //create explosion
audio_play_sound(snd_enemy_hit, 1, false);
score += 50; //increase score