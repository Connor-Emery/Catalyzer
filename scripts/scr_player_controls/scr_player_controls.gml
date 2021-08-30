//script for player controls

function scr_player_controls()
{
	key_up = keyboard_check(ord("W"));
	key_down = keyboard_check(ord("S"));
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	
	image_angle = 270 + point_direction(x, y, mouse_x, mouse_y);
	
	if key_up
	{
		vspeed -= 1; //accelerate
	}
	if key_down
	{
		vspeed += 1; //decelerate
	}
	if key_left
	{
		hspeed -= 1; //move left
	}
	if key_right
	{
		hspeed += 1; //move right
	}
	if !key_up && !key_down && !key_left && !key_right
	{
		speed -= sign(speed) * 0.25 //if not pressing directional keys, slow to halt
	}
	
	if canShoot && mouse_button == mb_left //if player can shoot and is pressing LMB
	{
		canShoot = false; //set canShoot to false
		alarm[0] = shoot_cooldown; //set alarm 0 to shoot_cooldown
		var x1 = x + lengthdir_x(200, image_angle - 270); //set x1
		var y1 = y + lengthdir_y(200, image_angle - 270); //set y1
		instance_create_layer(x1, y1, "Player", obj_player.shot_type); //spawn a bullet
		sprite_index = spr_player_shoot; //set sprite to shooting animation
	}
	
	if canDash && mouse_button == mb_right //if player can dash and is pressing RMB
	{
		canDash = false; //set canDash to false
		dashing = true; //set dashing to true
		alarm[1] = dash_duration; //set alarm 1 to dash_duration
		speed = dash_speed / 2; //set initial dash speed
		audio_play_sound(snd_player_dash, 3, false);
	}
}