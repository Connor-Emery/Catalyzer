/// @description When facility is destroyed

instance_create_layer(x, y, "Structure", obj_explosion); //create explosion
if (room == room_forest)
{
	instance_create_layer(x, y, "Player", obj_catalyst_forest); //create catalyst
}
if (room == room_ice)
{
	instance_create_layer(x, y, "Player", obj_catalyst_ice); //create catalyst
}
if (room == room_desert)
{
	instance_create_layer(x, y, "Player", obj_catalyst_desert); //create catalyst
}
score += 100; //increase score