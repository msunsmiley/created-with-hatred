/// @description Insert description here
// You can write your code in this editor


interact=1;

function interaction(){
	talk++;
	switch (talk){
	case 1: oChat.create("Do you want to try some of this... delicious... alcohol..?",c_white); break;
	case 2: oChat.create("You want to take it, but you're afraid it might help you."); break;
	case 3: oChat.create("Take it anyway?"); oChat.yesNo=1; break;
	case 4:
	if oChat.yesNo==3 {
		oChat.create("You drank some alcohol. You feel a little better.");
		oChat.yesNo=0;
		oPlayer.happy+=6;
	}
	else oChat.kill();
	break;
	case 5: oChat.kill(); global.drink=1;
	}
	
}

text=[
	"I have reached the end.",
	"Just kidding, because I am alive.",
	"The end is just death.",
	"How do I know this?"
]


choose_=0;
talk=0;



// Inherit the parent event
event_inherited();

