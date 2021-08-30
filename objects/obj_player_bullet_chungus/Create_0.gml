/// @description When player's bullet is created

image_xscale = 1;
image_yscale = 1;

image_angle = 270 + point_direction(x, y, mouse_x, mouse_y); //set sprite angle
direction = 90 + image_angle; //set bullet direction

audio_play_sound(snd_player_shoot_chungus, 2, false); //play player shooting sound