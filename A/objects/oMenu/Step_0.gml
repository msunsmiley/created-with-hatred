/// @description Insert description here
// You can write your code in this editor


var _nodesc = "DESCRIPTION_NOT_SET"

//Open menu
if (global.keyMenu && !global.infight && !oPlayer.event )
{ selection=0;
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
		
		if !keyboard_check(vk_f2) {f2=0;}
		else f2++;
		if f2==110 game_restart()
		
		if (global.keyDownP && selection<1){
			selection++;
		}

		if (global.keyUpP   && selection>0){
			selection--;
		}
	}
	
	if (inItems && !inWish){
		if (global.keyUpP    && itemSel > 1) {itemSel-=2; itemSely--;}
		if (global.keyLeftP  && itemSel > 0 && (itemSel % 2.0) ) {itemSel-=1; itemSelx=0;}
		if (global.keyDownP  && itemSel<itemAmnt-2 ) {itemSel+=2; itemSely++;}
		if (global.keyRightP && itemSel<itemAmnt-1 && !(itemSel % 2.0)) {itemSel+=1; itemSelx=1;}
		if (global.keyAction) && room != rmEnd itemUse();
		
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
	
	if global.keyAction {
		switch (selection){
		case 0: inItems=true; break;
		case 1: if room!= rmEnd game_end(); break;
		}
	}
}

