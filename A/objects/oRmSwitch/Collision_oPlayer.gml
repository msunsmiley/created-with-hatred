/// @description Insert description here
// You can write your code in this editor

var py = oPlayer.y
var px = oPlayer.x

switch (room) {
	case rm1: to(rm2,160,416); break;
	
	case rm2:
	if py>425 to(rm1,160,64);
	else if px>100 to(rm7,32,160);
	else to(rm3,288,160);
	break;
	
	case rm3:
	if px>250 to (rm2,32,384);
	else to(rm4,160,416);
	break;
	
	case rm4:
	if py<30 to(rm8,160,224);
	else if py>200 to(rm3,192,64);
	else if px<30 to(rm5,288,160);
	else if px>200 to(rm9,32,160);
	break;
	
	case rm5:
	if px>250 to(rm4,32,128-4);
	else to(rm6,160,320);
	break;
	
	case rm6:
	if py > 200 to(rm5,160,64);
	else to(rmEnd,160,224);
	break;
	
	case rm7: to(rm2,288,384); break;
	case rm8: to(rm4,160,64); break;
	case rm9: to(rm4,288,128-4); break;
}





