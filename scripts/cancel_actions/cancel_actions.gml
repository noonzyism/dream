//cancels all of a player's action callbacks

obj_player.alarm[9] = -1;
obj_player.alarm[10] = -1;
obj_player.alarm[11] = -1;

//also reset any action-specific variables
obj_player.mining = false;
obj_player.timer = -1;