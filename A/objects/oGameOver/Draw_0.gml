/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center)
draw_set_valign(fa_center)

draw_set_color(c_white)

gameOverText(sep*0, "Alas, the game is now over.")
gameOverText(sep*1, "But perhaps, there is more to explore than what you already have?")
gameOverText(sep*2, "Would you like to try again?")
gameOverText(sep*3, "Of course, always know your goal.")


if posy <= -180{
	draw_set_color(c_ltgray)
	draw_text(room_width/2, room_height/2, "Try   Win")

	draw_set_color(c_black)

	
	if sel==0
	draw_rectangle(room_width/2-40, room_height/2-20, room_width/2, room_height/2+20, false)
	else
	draw_rectangle(room_width/2+40, room_height/2-20, room_width/2, room_height/2+20, false)
}

