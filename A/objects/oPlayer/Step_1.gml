/// @description Insert description here
// You can write your code in this editor

if (room == rm2 && !global.infight && !audio_is_playing(overworld)) audio_play_sound(overworld,0,true)


if room == rm7 && !global.hell && oMenu.itemAmnt<8 {
	global.hell=1;
	itemAdd("Hell");
}
