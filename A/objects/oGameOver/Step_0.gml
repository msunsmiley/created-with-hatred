/// @description Insert description here
// You can write your code in this editor

if instance_exists(oPlayer)
if oPlayer.event==0 oPlayer.event=1;

if posy > -180 {
	
	if global.keyActionH
	posy-=1
	else
	posy-=0.40
}

else {
	if global.keyRightP && sel==0 sel=1;
	if global.keyLeftP  && sel==1 sel=0;	
	
	if global.keyAction {
		if sel==0 { audio_stop_all(); instance_destroy(oPlayer); instance_destroy(oMenu); Trans(rm1); }
		else game_end();
	}
}




