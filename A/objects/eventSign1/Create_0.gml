/// @description Insert description here
// You can write your code in this editor

text=0;

function interaction(){
	text++;
	switch (text){
	case 1: oChat.create("leaving without your friend is frowned upon"); break
	case 2: oChat.kill(); text=0; break
	}
}



