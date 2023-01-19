/// @description Insert description here
// You can write your code in this editor


if instance_exists(oShadow)
{
	shadow.x=x
	shadow.y=y
}

if (!global.infight){
	if event==1 {
		if place_meeting(x,y-1,obstacleE) {alarm[0]=1; return;}
		y--;
		ticker++;
	}
	if event==2 {
		if place_meeting(x,y+1,obstacleE) {alarm[0]=1; return;}
		y++;
		ticker++;
	}
	if event==3 {
		if place_meeting(x-1,y,obstacleE) {alarm[0]=1; return;}
		x--;
		ticker++;
	}
	if event==4 {
		if place_meeting(x+1,y,obstacleE) {alarm[0]=1; return;}
		x++;
		ticker++;
	}
}

if ticker==32 {
ticker=0; event=0;
}