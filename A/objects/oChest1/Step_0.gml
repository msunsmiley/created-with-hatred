/// @description Insert description here
// You can write your code in this editor


if INTERACT_REQUIREMENTS_BASIC && heredown {
	if (room==rm2 && !global.chest1) || (room==rm4 && !global.chest3){
		if oMenu.itemAmnt<8 && !text {
			interaction();
			exit;
		}
		if text {
			interaction();
		}
	}
}




