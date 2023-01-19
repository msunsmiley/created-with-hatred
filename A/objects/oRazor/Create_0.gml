/// @description Insert description here
// You can write your code in this editor

text=0;

function interaction(){
	text++
	switch (text){
	case 1: oChat.create("you picked up Bluddy\n(your friend)");
	oPlayer.bluddy=1;
	oPlayer.bluddyC=1;
	visible=false;
	solid=false;
	break;
	case 2: oChat.kill(); break;
	}
}





