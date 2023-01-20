/// @description Insert description here
// You can write your code in this editor


if on
{
	draw_set_font(fntChat)
	//MAIN BOX
	//box
	draw_sprite_stretched(sprBox,0,4,4,78,68)
	draw_set_color(c_white)
	//text
	draw_set_halign(fa_center)
	draw_set_valign(fa_top)
	draw_text_ext(42,16,"items\n\nwin", 12, 34)
	//selector
	draw_set_color(c_black)
	draw_rectangle(6, 8 + selection*30, 77, 30 + selection*30, false)
	draw_set_color(c_white)
	
	//PLAYER OVERVIEW
	//box
	var bx = 90
	var by = 6
	draw_sprite_stretched(sprBox,0,bx-2,by-2,220,160)
	//MAIN
	if !inItems && !inWish {
		draw_sprite_ext(sprMainFace,0,bx+4,by+4,2,2,0,c_white,1)
		//text
		draw_set_halign(fa_left)
		draw_set_valign(fa_top)
		draw_text(bx+72,by+4,"Main");
		draw_set_halign(fa_right);
		draw_text(bx+214,by+4,"Human");
		//happy bar
		draw_text(bx+214,by+18,oPlayer.happy_text);
		draw_healthbar(bx+120,by+35,bx+214,by+45,oPlayer.happy/95*100,backcol1,col1,col1,0,true,false)
		//bluddy bar
		draw_text(bx+214,by+42,string(oPlayer.bluddy_meter) + "/7")
		draw_healthbar(bx+120,by+58,bx+214,by+68,oPlayer.bluddy_meter/7*100,backcol2,col2,col2,0,true,false)
		//BLUDDY
		if (oPlayer.bluddy)
		{
			draw_sprite_ext(sprBluddyFace,0,bx+4,by+84,2,2,0,c_white,1)
			//text
			draw_text(bx+214,by+84,"Inanimate");
			draw_set_halign(fa_left)
			draw_text(bx+72,by+84,"Bluddy");
		}
	}
	//ITEMS
	if inItems && !inWish {
		draw_set_halign(fa_left)
		draw_set_valign(fa_top)
		draw_text(bx+5,by+4,items[0] + "\n" + items[2]+ "\n" + items[4]+ "\n" + items[6])
		draw_set_halign(fa_right)
		draw_text(bx+212,by+4,items[1] + "\n" + items[3]+ "\n" + items[5]+ "\n" + items[7])
		
		draw_set_color(c_black)
		draw_rectangle(bx+2 + itemSelx * 100, by+5 + itemSely * 20,bx+110 + itemSelx * 100,by+20 + itemSely * 20,false)
		//DESCRIPTION OF ITEM
		draw_set_halign(fa_left)
		draw_set_color(c_white)
		draw_text_ext(bx+4,by+100,itemDesc,16,218);
	}
	draw_set_font(fntChatSm)
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	draw_text(2,display_get_gui_height()-14,GM_version)
}

draw_set_halign(fa_left)
draw_set_valign(fa_top)



