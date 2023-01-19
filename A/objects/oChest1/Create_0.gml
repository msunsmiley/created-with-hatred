/// @description Insert description here
// You can write your code in this editor

text=0;

function interaction(){
	text++
	image_index=1;
	if text==1 { oChat.create("Found a water bottle.");itemAdd("Water bottle") }
	if text==2 {
		oChat.kill();
		if room == rm2 global.chest1=1;
		if room == rm4 global.chest3=1;
		}
	
}



// Inherit the parent event
event_inherited();

