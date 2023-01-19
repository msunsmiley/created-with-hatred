/// @description Insert description here
// You can write your code in this editor


text=0;

function interaction(){
	text++;
	switch (text) {
	    case 1: oChat.create("Dear juvenile comrade, it is possible to continue toward this area.", c_red); break;
	    case 2: oChat.create("However, it seemingly arbitrarily requires trueness from all following conditions:", c_red); break;
	    case 3: oChat.create("* Happy Level 0\n* Successfully gaurded against all currently approachable disasters", c_red); break;
	    case 4: oChat.create("* Committed an act normally frowned upon", c_red); break;
		case 5: oChat.kill(); text=0;
	}
}

event_inherited()



