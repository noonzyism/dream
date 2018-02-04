/// @description Insert description here
// You can write your code in this editor
destx = x;
desty = y;

//setting initial skill levels
levels[0] = 1;		//attack
levels[1] = 1;		//strength
levels[2] = 1;		//defence
levels[3] = 1;		//magic
levels[4] = 1;		//archery
levels[5] = 1;		//faith
levels[6] = 1;		//health
levels[7] = 1;		//woodcutting
levels[8] = 1;		//carpentry (includes RS's fletching)
levels[9] = 1;		//mining
levels[10] = 1;		//smelting
levels[11] = 1;		//smithing 
levels[12] = 1;		//fishing
levels[13] = 1;		//cooking
levels[14] = 1;		//crafting (small jewelry & tools)
levels[15] = 1;		//engineering (larger machinery)
levels[16] = 1;		//stamina (increases movement speed and stamina bar regeneration)
levels[17] = 1;		//athleticism (allows passing obstacles and reduces stamina diminishing)
levels[18] = 1;		//nursing (allows for treating and healing other players)
levels[19] = 1;		//breeding (raising animals)
levels[20] = 1;		//farming (growing)
levels[21] = 1;		//herblore (potion making)
levels[22] = 1;		//tailoring (creation of many clothing/armor items)
levels[23] = 1;		//navigation (increases minimap range, adds more markers to maps, creation of maps)
levels[24] = 1;		//taming (allows higher level followers)
levels[25] = 1;		//sailing
levels[26] = 1;		//merchanting (player-owned shops, increased by trading)
levels[27] = 1;		//speech (npc shop related, increased through dialogue and purchasing goods)
levels[28] = 1;
levels[29] = 1;
levels[30] = 1;
levels[31] = 1;
levels[32] = 1;
levels[33] = 1;


bag = ds_list_create();


//collision-related vars

//boundary offsets from the sprite origin
left_offset = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
right_offset = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
bottom_offset = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
top_offset = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);

image_xscale = 0.5;
image_yscale = 0.5;
