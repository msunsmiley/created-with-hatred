// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


//MACROS
#macro INTERACT_REQUIREMENTS_BASIC !oMenu.on && global.keyAction && oChat.interact

//Functions
function is_in_range(xx,a,b){
	if a < b {
		if xx >= a && xx <= b return true
	}
	
	else if b < a  {
		if xx >= b && xx <= a return true
	}
	
	return false
}

//NEW COLLISIONS

#macro heredown \
( \
	oPlayer.sprite_index==sprPlayerU && \
	is_in_range(oPlayer.x, bbox_left, bbox_right) && \
	is_in_range(oPlayer.bbox_top, bbox_bottom, bbox_bottom + 4) \
)

#macro hereup \
( \
	oPlayer.sprite_index==sprPlayerD && \
	is_in_range(oPlayer.x, bbox_left, bbox_right) && \
	is_in_range(oPlayer.bbox_bottom, bbox_top, bbox_top - 4) \
)

#macro hereleft \
( \
	oPlayer.sprite_index==sprPlayerR && \
	is_in_range(oPlayer.y, bbox_bottom+6, bbox_top) && \
	is_in_range(oPlayer.bbox_right, bbox_left-4, bbox_left) \
)

#macro hereright \
( \
	oPlayer.sprite_index==sprPlayerL && \ 
	is_in_range(oPlayer.y, bbox_bottom+6, bbox_top) && \
	is_in_range(oPlayer.bbox_left, bbox_right, bbox_right+4) \
)


//npc talk
function npc_talk_basic(color=c_white){
	if talk == array_length(text)+1 {
		talk=0; oChat.kill();
	}

	if talk oChat.create(text[talk-1], color)
}

function npc_talk_multi(color=c_white){
	var num = array_length(arrays)-1;
	if !choose_ choose_= 1 + irandom(num);
	var array = arrays[choose_-1];
	
	if talk == array_length(array)+1 {
		talk=0; oChat.kill(); choose_=0;
	}

	if talk oChat.create(array[talk-1],color)
}

/*
function outline_this_ext(x,y,string,sep,w){
	draw_text_ext(x-1,y,string,sep,w);
	draw_text_ext(x+1,y,string,sep,w);
	draw_text_ext(x,y-1,string,sep,w);
	draw_text_ext(x,y+1,string,sep,w);
}

function outline_this(x,y,string){
	draw_text(x-1,y,string);
	draw_text(x+1,y,string);
	draw_text(x,y-1,string);
	draw_text(x,y+1,string);
}
*/

function gameOverText(sep, text){
	draw_set_color(c_purple)
	draw_text_ext(room_width/2 - 1,posy + sep -1 ,text, 14, 290)
	
	draw_set_color(c_orange)
	draw_text_ext(room_width/2 + 1,posy + sep +1 ,text, 14, 290)
	
	draw_set_color(c_white)
	draw_text_ext(room_width/2,posy + sep,text, 14, 290)
}