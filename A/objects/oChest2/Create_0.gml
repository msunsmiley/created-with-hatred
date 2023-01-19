/// @description Insert description here
// You can write your code in this editor


text=0;

function interaction(){
	text++
	image_index=1;
	if text==1 { oChat.create("Found a beer.");itemAdd("Beer") }
	if text==2 { oChat.kill(); global.chest2=1; }
	
}


// Inherit the parent event
event_inherited();









