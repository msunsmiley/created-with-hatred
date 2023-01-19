global.roomTarget = -1;
global.midTransition = false;
global.xtarget=0;
global.ytarget=0;

//Called whenever you want to go from one room to another, using any combination of in/out sequences

function Trans(_roomTarget, _typeOut = sqFadeOut, _typeIn = sqFadeIn)
{
	if (!global.midTransition)
	{
		if instance_exists(oPlayer) oPlayer.event=1;
		global.midTransition = true;
		global.roomTarget = _roomTarget;
		TransitionPlaceSequence(_typeOut);
		layer_set_target_room(_roomTarget)
		TransitionPlaceSequence(_typeIn);
		layer_reset_target_room();
	}
}

//Places the sequences in the room
function TransitionPlaceSequence(_type)
{
	if (layer_exists("transition")) layer_destroy("transition")
	var _lay = layer_create(-9999,"transition")
	layer_sequence_create(_lay,0,0,_type);	
}

//Called as a moment at the end of an "Out" transition sequence
function TransitionChangeRoom()
{
	room_goto(global.roomTarget);
	if instance_exists(oPlayer) {
		oPlayer.x=global.xtarget;
		oPlayer.y=global.ytarget;
	}
}

//Called as a moment at the end of an "In" transition sequence
function TransitionFinished()
{
	if instance_exists(oPlayer) oPlayer.event=0;
	layer_sequence_destroy(sqFadeOut);
	layer_sequence_destroy(sqFadeIn);
	global.midTransition = false;
}
