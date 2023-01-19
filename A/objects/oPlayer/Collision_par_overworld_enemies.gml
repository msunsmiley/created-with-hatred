/// @description Insert description here
// You can write your code in this editor


if oMenu.itemAmnt==8 exit;
if !oMenu.on && keyPressed(vk_space) && !global.infight && !oPlayer.event
{
	var enemy = sprite_get_name(other.sprite_index)
	
	Trans(rm_fight)
	audio_pause_sound(overworld)
	if !irandom(7) audio_play_sound(fight2,0,1)
	else audio_play_sound(fight,0,1)
	
	global.infight=1;
	global.px=oPlayer.x;
	global.py=oPlayer.y;
	global.room=room;
	
	var _sprite, _atk, _fade, _name;
	switch (enemy){
	case "sprRope":
	_sprite = sprRope;
	_atk= 9;
	_fade= 8;
	_name = "Rope I";
	itemAdd("Rope");
	break;
	
	case "sprBag":
	_sprite = sprBag;
	_atk= 8;
	_fade= 5;
	_name = "Bag";
	itemAdd("Bag");
	break;
	
	case "sprPills":
	_sprite = sprPillsF;
	_atk= 1;
	_fade= 12;
	_name = "Script";
	itemAdd("Bottle");
	break;
	}
	global.enemySprite = _sprite;
	global.enemyAtk = _atk;
	global.enemyFade = _fade;
	global.enemyName = _name;
	
	switch(room){
	case rm2: global.enemyRm2=1; break;
	case rm7: global.enemyRm7=1; break;
	case rm4: global.enemyRm4=1; break;
	case rm5: global.enemyRm5=1; break;
	case rm9: global.enemyRm9=1; break;
	}
	global.defeated++;
	
}



