/// @description Insert description here
// You can write your code in this editor


if oPlayer.bluddy && INTERACT_REQUIREMENTS_BASIC && (heredown) interaction();

//setup for using throwable items
if heredown here=1;
else here=0;

if oMenu.on && talk && action {
	talk++;
	switch (talk) {
		case 2: oChat.create("You threw away the " + item + "."); break;
		case 3: oChat.kill(); talk=0; break;
	}
}




