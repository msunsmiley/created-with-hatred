/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(1)
draw_set_color(c_white);

var y1= 165;
var lx1 = 5;
var rx1 = 250, rx2 = room_width-5;
var w = #ffffff;
var b = c_black;

var halfRW= room_width/2
var halfRH= room_height/2

//TEST STUFF
/*
var str = "turn= " + string(turn) + "\ntempD= " + string(tempD) + "\nenemyMoving= " + string(enemyMoving)
+ "\nmoveMain= " + moveMain + "\nmoveBluddy= " + moveBluddy + "\nbattleTimer= " +
string(battleTimer)+ "\ntempC= " + string(tempC)
draw_text(5,halfRH-70, str)
*/
//ENEMY STUFF

draw_sprite_stretched(sprFightBox, 0, lx1, 5, room_width-10, 40)

draw_set_halign(fa_center)
draw_text(halfRW,15,enemyName)

//ENEMY HIT BAR "MAIN DEATH"
draw_healthbar(halfRW+50,30,halfRW+90,35,mainDeath/5 * 100,b,c_blue,c_red,0,0,0)

//BATTLE MSG
draw_text(halfRW,45,battleMessage)

//BOTTOM TWO RECTANGLES
//LEFT
draw_sprite_stretched(sprFightBox,0,lx1,y1,240,70)

//RIGHT
draw_sprite_stretched(sprFightBox,0,rx1,y1,65,70)


if !enemyMoving
{
	if tempD==0 draw_text(room_width-38,y1+8,"Hit\n\nGaurd")
	else draw_text_ext(room_width-38,y1+8,"Attack\n\nDo nothing",12,60)
	
	var yy=sel*35;
	draw_rectangle_color(rx1+4,172+yy,rx2-4,192+yy, b,b,b,b, false)
	
}

//TEAM FACES AND NAMES
//MAIN
if tempD==0 draw_set_color(c_orange)
draw_text(99,y1,"Main")
draw_set_color(w)

draw_sprite_stretched(sprMainFace,0,75,y1+18,48,48)

//BLUDDY
if oPlayer.bluddy
{
	if tempD==1 draw_set_color(c_orange)
	draw_text(155,y1,"Bluddy")
	draw_set_color(w)

	draw_sprite_stretched(sprBluddyFace,0,130,y1+18,48,48)
}

// MAIN'S STATS
var backcol1 = oMenu.backcol1
var col1 = oMenu.col1
var backcol2 = oMenu.backcol2
var col2 = oMenu.col2

draw_set_font(fntChatSm)
draw_set_halign(fa_center)
if gaurded draw_set_color(c_yellow) else draw_set_color(c_white)
draw_text(42,y1+10,"Resist: "+string(ceil(effDef)));
draw_set_halign(fa_right)

//HP, HAPPY, AND BLUDDY BARS
var hp = #cc0000
draw_set_color(c_white)
draw_healthbar(20,y1+5,70,y1+10,mainHP,hp,hp,hp,0,false,false)

draw_text(70,y1+21,oPlayer.happy_text)
draw_healthbar(20,200,70,207,oPlayer.happy/95*100,backcol1,col1,col1,0,true,false)

draw_text(70,y1+43,string(oPlayer.bluddy_meter)+"/7")
draw_healthbar(20,220,70,227,oPlayer.bluddy_meter/7*100,backcol2,col2,col2,0,true,false)



