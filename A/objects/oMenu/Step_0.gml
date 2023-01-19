/// @description Insert description here
// You can write your code in this editor


if (keyPressed(vk_escape)) {
	game_end();
}

var _nodesc = "DESCRIPTION_NOT_SET"

//Open menu
if (keyPressed(ord("Q")) && !global.infight && !oPlayer.event )
{
	if (!inItems && !inWish && !oPlayer.event){
		if !on { on=true; }
		else  { on = false; }
	}
	if (inItems) {
		inItems=false;
		if global.happinessAchieved {
			Trans(rmHappy);
			audio_stop_all();
		}
	}
	if (inWish) inWish=false;
}

//Menu main
if on && !oPlayer.event
{
	if (!inItems && !inWish) {
		if (keyPressed(ord("S")) && selection<1){
			selection++;
		}

		if (keyPressed(ord("W")) && selection>0){
			selection--;
		}
	}
	
	if (inItems && !inWish){
		if (keyPressed(ord("W")) && itemSel > 1) {itemSel-=2; itemSely--;}
		if (keyPressed(ord("A")) && itemSel > 0 && (itemSel % 2.0) ) {itemSel-=1; itemSelx=0;}
		if (keyPressed(ord("S")) && itemSel<itemAmnt-2 ) {itemSel+=2; itemSely++;}
		if (keyPressed(ord("D")) && itemSel<itemAmnt-1 && !(itemSel % 2.0)) {itemSel+=1; itemSelx=1;}
		if (keyPressed(vk_space)) && room != rmEnd itemUse();
		
		if(itemSel == itemAmnt) {itemSel=0;itemSelx=0;itemSely=0;}
		
		//ITEM DESCRIPTIONS
		switch (items[itemSel]){
		case "Water bottle": itemDesc = "Drink some water. Hydrates.\nHappy +3"; break;
		case "Hell": itemDesc = "Hell\nHell Hell"; break;
		case "Rope": itemDesc = "An old rope.\nUse at a trash can (+8 Happy)."; break;
		case "Bag": itemDesc = "A garbage bag.\nUse at a trash can (+5 Happy)."; break;
		case "Bottle": itemDesc = "An empty bottle. Throw it away to slightly increase your happiness."; break;
		case "Beer": itemDesc = "Very helpful beverage.\nDrink for +6 Happy"; break;
		case "": itemDesc = ""; break;
		default: itemDesc = _nodesc;
		}
		
	}
	
	if (keyPressed(vk_space)){
		switch (selection){
		case 0: inItems=true; break;
		case 1: game_end(); break;
		}
	}
}

