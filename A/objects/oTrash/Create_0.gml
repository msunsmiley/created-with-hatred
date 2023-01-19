/// @description Insert description here
// You can write your code in this editor


here=0;
talk=0;
item="";

function interaction(){
	talk++;
	switch (talk){
	case 1: oChat.create("Do you want to throw away Bluddy?"); oChat.yesNo=1; break;
	case 2:
	if oChat.yesNo==3 { oChat.create("You threw away your old friend."); oChat.yesNo=0; }
	else { oChat.kill(); talk=0; }
	break;
	default: oChat.kill(); oPlayer.bluddy=0; talk=0;
	}
}


// Inherit the parent event
event_inherited();

