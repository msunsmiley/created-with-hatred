/// @description Insert description here
// You can write your code in this editor


//"BLUDDY" LEVELS
if bluddy_meter==7 { 
	bluddy_meter=0;
	happy+=7;
}

//"HAPPY" LEVELS

if happy==95 { happy_text="Average"; atk=10; def=10;}
else if happy>55 {happy_text="Manageable"; atk=7; def=9;}
else if happy>25 {happy_text="Sad"; atk=6; def=7;}
else if happy>0 {happy_text="Depressed"; atk=5; def=4;}
else if happy==0 {happy_text="Not good"; atk=3; def=3;}
if global.happinessAchieved happy_text="Happy";

//IF THERE IS EVENT, NO MOVING
if (!event && !oMenu.on) {
	hInput = global.keyRight - global.keyLeft;
	vInput = global.keyDown - global.keyUp;
	}
else {
	hInput=0;vInput=0;
	}

//IF YOU PRESS A KEY, FIRST FRAME HAS FOOT UP
if (global.keyUpP || global.keyDownP || global.keyLeftP || global.keyRightP)
{
	image_index=0;
}

//CHECK COLLISION WITH HITBOX OBJECT

if place_free(x + hInput*spd,y) x+=hInput*spd
if place_free(x,y + vInput*spd) y+=vInput*spd


//CHANGING SPRITES DIRECTIONS
switch(hInput){
	case 1: sprite_index = sprPlayerR; break;
	case -1: sprite_index = sprPlayerL; break;
}

switch(vInput){
	case 1: sprite_index = sprPlayerD; break;
	case -1: sprite_index = sprPlayerU; break;
}

//IDLING
if (hInput==0&&vInput==0){
	image_index=1;
}