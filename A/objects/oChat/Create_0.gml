/// @description Insert description here
// You can write your code in this editor

text="";
color=c_orange;
yesNo=0;
interact=1;

sep=string_height(text);
w=310;

function create(text,color=c_orange){
	self.color=color
	self.text=text;
	oPlayer.event=1;
}

function empty(){
	text="";
	yesNo=0;
}

function kill(){
	text="";
	yesNo=0;
	oPlayer.event=0;
	other.talk=0;
}