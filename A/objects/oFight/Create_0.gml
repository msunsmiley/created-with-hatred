/// @description Insert description here
// You can write your code in this editor

oPlayer.x=x

//
tempD=0;
tempC=0;
enemyMoving=0;
sel=0;
turn=0;

battleTimer=0;
battleMessage="";
//

//main
gaurded=0;
moveMain = "";
mainDef = 0;
effDef =0;
mainDeath=0;
mainHP=100;

//bluddy
moveBluddy = "Attack" ;

//ENEMY
moveEnemy="";

//confirming the enemy collided in the overworld
oBoss.sprite_index = global.enemySprite
enemyName = global.enemyName;
enemyFade= global.enemyFade;
enemyAtk= global.enemyAtk;


//LINE STUFF
line_chance=0;
alarm[0] = room_speed* 0.5