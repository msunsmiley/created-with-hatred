/// @description Insert description here
// You can write your code in this editor

if instance_exists(oPlayer)
if oPlayer.event==0 oPlayer.event=1;

if posy > -180 {
	
	if keyboard_check(vk_space)
	posy-=1
	else
	posy-=0.40
}

else {
	if keyPressed(ord("D")) && sel==0 sel=1;
	if keyPressed(ord("A")) && sel==1 sel=0;	
	
	if keyPressed(vk_space){
		if sel==0 { audio_stop_all(); instance_destroy(oPlayer); instance_destroy(oMenu); Trans(rm1); }
		else game_end();
	}
}




