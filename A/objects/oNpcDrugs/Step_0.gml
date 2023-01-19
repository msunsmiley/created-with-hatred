/// @description Insert description here
// You can write your code in this editor


if INTERACT_REQUIREMENTS_BASIC && (hereleft||heredown|hereright) {
	if !global.drugs interaction();
	else talk++;
}

if talk==4 && !global.drugs
{
	if layer_sequence_is_finished(_scene)
	{
		interaction();
	}
}

if global.drugs npc_talk_basic();

if hereleft image_index=1
else if hereright image_index=2
else image_index=0;




