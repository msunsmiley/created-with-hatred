/// @description Insert description here
// You can write your code in this editor


interact=1;

function interaction(){
	talk++;
	switch (talk){
	case 1: oChat.create("You know man, it looks like this is exactly what you need some of right now.",c_white); break;
	case 2: oChat.create("You want to take it, but it will very likely help you."); break;
	case 3: oChat.create("Take it anyway?"); oChat.yesNo=1; break;
	case 4:
	if oChat.yesNo==3 {
		oChat.empty();
		_lay = layer_create(-9999,"scenes");
		_scene = layer_sequence_create(_lay,0,0,sqScene1);
		oChat.interact=0;
		}
	else {
		oChat.kill(); return;
	}
	break;
	case 5:
	oChat.yesNo=0;
	oChat.create("You spent some time doing drugs with the others. It helped you incredibly.");
	oChat.interact=1;
	oPlayer.happy+=15;
	break;
	case 6: oChat.kill(); global.drugs=1;
	}
	
}

text=[
	"Beauty is what you can't see."
]


choose_=0;
talk=0;



// Inherit the parent event
event_inherited();

