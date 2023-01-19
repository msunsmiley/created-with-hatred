/// @description Insert description here
// You can write your code in this editor

draw_set_font(fntChat)

draw_set_color(c_black)
//outline_this_ext(5,180,text,sep,w)

draw_set_color(color)
draw_text_ext(5,180,text,sep,w);

draw_set_halign(fa_center)
if yesNo draw_text_ext(room_width/2,220,"Yes       No",sep,w);

draw_set_color(c_black)
if yesNo==1 draw_rectangle(100,215,136,235,false)
if yesNo==2 draw_rectangle(186,215,222,235,false)



