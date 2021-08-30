/// @description When enemy is destroyed

instance_create_layer(x, y, "Enemy", obj_explosion); //create explosion
audio_play_sound(snd_enemy_m_hit, 1, false);
score += 10; //increase score