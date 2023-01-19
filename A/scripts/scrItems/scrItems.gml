// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function itemAdd(item){
	with(oMenu){
		itemAmnt=0;
		for (var i=0; i<array_length(items); i++) {
		    if items[i] == "" continue;
			itemAmnt++;
		}
		items[itemAmnt]=item;
		itemAmnt++;
	}
}

function itemUse(){
	switch(items[itemSel]){
		
	case "Water bottle":
	oPlayer.happy+=3;
	break;
	
	case "Beer":
	oPlayer.happy+=6;
	break;
	
	case "Hell":
	if oPlayer.happy==95 {
		if instance_exists(oTrash)
		{
			if oTrash.here && !oPlayer.bluddy { oTrash.talk++; oTrash.item = items[itemSel]; global.happinessAchieved=1; }
			else return;
		}
		else return;
	}
	else if oPlayer.happy {oPlayer.happy--;}
	break;
	
	case "Rope":
	if instance_exists(oTrash)
	{
		if oTrash.here { oTrash.talk++; oTrash.item = items[itemSel]; oPlayer.happy+=8; }
		else return;
	}
	else return;
	break;
	
	case "Bag":
	if instance_exists(oTrash)
	{
		if oTrash.here { oTrash.talk++; oTrash.item = items[itemSel]; oPlayer.happy+=5; }
		else return;
	}
	else return;
	break;
	
	case "Bottle":
	if instance_exists(oTrash)
	{
		if oTrash.here { oTrash.talk++; oTrash.item = items[itemSel]; oPlayer.happy++; }
		else return;
	}
	else return;
	break;
	}
	
	for (var i=itemSel; i<array_length(items)-1; i++) {
	    items[i]=items[i+1]
	}
	items[7]="";
	itemAmnt--;

}