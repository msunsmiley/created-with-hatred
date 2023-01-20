/// @description Insert description here
// You can write your code in this editor


var bluddy = oPlayer.bluddy
if oPlayer.event==0 oPlayer.event=1;
mainDef = oPlayer.def

if !enemyMoving
{
	if global.keyUpP && sel==1 sel=0;
	if global.keyDownP && sel==0 sel=1;
	
	if global.keyAction && !global.midTransition {
		if tempD==0 {
			if sel==0 moveMain="Hit"
			else moveMain="Gaurd"
		}
		if tempD==1 {
			if sel==0 moveBluddy="Attack"
			else moveBluddy="Do Nothing"
		}
		tempD++; sel=0
		}
	
	if (tempD == 2) || (tempD == 1 && !bluddy) {
		enemyMoving=1; tempC=0; moveEnemy="Attack";
		}
	
	if global.keyBack && tempD>0 { tempD--; sel=0; }
}

if enemyMoving {
	battleTimer++;
}

var moveDelay = 120;

if battleTimer>0 {
	if tempC == 0{
		switch (moveMain) {
		case "Hit": battleMessage= "Main hits at it!"; mainDeath++; enemyAtk++; moveMain = ""; break;
		case "Gaurd": battleMessage= "Main gaurds."; moveMain = ""; gaurded=1;  break;
		}
		if battleTimer == moveDelay {
			if !bluddy {
				battleTimer=0;
				tempC = -1;
				enemyMoving=2;
			}
			else {
				battleTimer=0;
				tempC = 1;
			}
		}
	}
	if tempC == 1 && bluddy{
		switch (moveBluddy) {
		case "Attack": battleMessage= "Bluddy attacks."; moveBluddy = ""; mainHP-=5; oPlayer.bluddy_meter++; break;
		case "Do Nothing": battleMessage= "Bluddy does nothing."; moveBluddy = ""; break;
		}
		if battleTimer=moveDelay {
			battleTimer=0;
			tempC = -1;
			enemyMoving=2;
		}
	}
	
	//ENEMY MOVES
	if enemyMoving==2 {
		if moveEnemy== "Attack" {
			var dmg = ceil(enemyAtk*5/mainDef);
			battleMessage= enemyName + " attacks."; mainHP-= dmg ; moveEnemy="";
			}
		if battleTimer == moveDelay {
			if turn==0 battleMessage = enemyName + " begins to slowly fade away...";
			else if turn==enemyFade-1 battleMessage = enemyName + " fades away.";
			else battleMessage = enemyName + " is slowly fading away...";
		} 
		//ENEMY FINISHES MOVING
		if battleTimer == moveDelay*2 {
			turn++; battleMessage = ""; tempD=0; enemyMoving=0; battleTimer=0; gaurded=0;
		}
	}
}

if gaurded effDef = mainDef * 1.5;
else effDef = mainDef

if (turn==enemyFade) {
	oBoss.image_alpha = clamp(oBoss.image_alpha - 0.04, 0.2, 1);
	audio_stop_sound(fight);
	audio_stop_sound(fight2);
	audio_resume_sound(overworld);
	Trans(global.room)
	global.infight=2;
}

// REMOVE LATER
if !global.midTransition && mainHP <= 0 || mainDeath == 5 {
	audio_stop_all();
	audio_play_sound(gameover,0,1);
	Trans(rm_gameover)
}

