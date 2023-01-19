/// @description Insert description here
// You can write your code in this editor


if INTERACT_REQUIREMENTS_BASIC && (hereleft||heredown||hereright) {
	if !global.drink interaction();
	else talk++;
}


if global.drink && talk npc_talk_basic();

//if oPlayer.sprite_index==sprPlayerR && is_in_range(oPlayer.y, bbox_bottom, bbox_top) && is_in_range(oPlayer.x, bbox_left-4, bbox_left)
//game_end()

if hereleft image_index=1
else if hereright image_index=2
else image_index=0;




