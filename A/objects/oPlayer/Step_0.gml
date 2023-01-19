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
	hInput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	vInput = keyboard_check(ord("S")) - keyboard_check(ord("W"));
	}
else {
	hInput=0;vInput=0;
	}

//IF YOU PRESS A KEY, FIRST FRAME HAS FOOT UP
if (keyPressed(ord("W")) || keyPressed(ord("A")) || keyPressed(ord("S")) || keyPressed(ord("D")) )
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