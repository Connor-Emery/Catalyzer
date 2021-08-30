/// @description When player's bullet is created

image_xscale = 0.13;
image_yscale = 0.13;

image_angle = 270 + point_direction(x, y, mouse_x, mouse_y); //set sprite angle
direction = 90 + image_angle; //set bullet direction

audio_play_sound(snd_player_shoot, 2, false); //play player shooting sound