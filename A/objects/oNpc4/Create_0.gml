/// @description Insert description here
// You can write your code in this editor



function interaction(){
	talk++;
	var w=c_white;
	
	if choose_==1 {
		switch (talk){
		case 1: oChat.create("You probably don't know what your goal is.", w); break;
		case 2: oChat.create("That is why you are a loser.",w); break;
		case 3: oChat.create("How can you win without knowing the goal?",w); break;
		case 4: oChat.create("You can only lose.",w); break;
		case 5: oChat.kill(); choose_=0; break;
		}
	}
	if choose_==2 {
		switch(talk){
		case 1: oChat.create("Would you like to know the fastest way to win?",w); oChat.yesNo=1; break;
		case 2: oChat.create("You already know it.",w); oChat.yesNo=0; break;
		case 3: oChat.kill(); choose_=0; break;
		}
	}
}


choose_=2;
talk=0;





// Inherit the parent event
event_inherited();

