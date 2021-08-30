//script for shot prediction

function scr_predict(enemy, player, bullet_speed)
{
    var prediction = point_direction(enemy.x, enemy.y, player.x, player.y); //find the direction
    var alpha = player.speed / bullet_speed; //get alpha
    var degrees = degtorad(player.direction - prediction); //translate to degrees from radians
    var update = alpha * sin(degrees); //get the update
	
    if (abs(update) >= 1) //if can't predict
	{
        return (-1); //return -1 to handle
    }
	
    prediction += radtodeg(arcsin(update)); //update the direction
	
    return prediction; //return the prediction
}