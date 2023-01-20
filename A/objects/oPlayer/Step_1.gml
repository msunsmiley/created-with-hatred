/// @description Insert description here
// You can write your code in this editor

if gamepad_is_connected(0) {
	global.keyUp     = gamepad_button_check(0,gp_padu)
	global.keyDown   = gamepad_button_check(0,gp_padd)
	global.keyLeft   = gamepad_button_check(0,gp_padl)
	global.keyRight  = gamepad_button_check(0,gp_padr)
	global.keyUpP    = gamepad_button_check_pressed(0,gp_padu)
	global.keyDownP  = gamepad_button_check_pressed(0,gp_padd)
	global.keyLeftP  = gamepad_button_check_pressed(0,gp_padl)
	global.keyRightP = gamepad_button_check_pressed(0,gp_padr)
	global.keyAction = gamepad_button_check_pressed(0,gp_face1)
	global.keyBack   = gamepad_button_check_pressed(0,gp_face2)
	global.keyMenu   = gamepad_button_check_pressed(0,gp_face4)
	global.keyActionH= gamepad_button_check(0,gp_face1)
	global.keyBackH  = gamepad_button_check(0,gp_face2)
	global.keyMenuH  = gamepad_button_check(0,gp_face4)
}
else {
	global.keyUp     = keyboard_check(ord("W"))
	global.keyDown   = keyboard_check(ord("S"))
	global.keyLeft   = keyboard_check(ord("A"))
	global.keyRight  = keyboard_check(ord("D"))
	global.keyUpP    = keyboard_check_pressed(ord("W"))
	global.keyDownP  = keyboard_check_pressed(ord("S"))
	global.keyLeftP  = keyboard_check_pressed(ord("A"))
	global.keyRightP = keyboard_check_pressed(ord("D"))
	global.keyAction = keyboard_check_pressed(vk_space)
	global.keyBack   = keyboard_check_pressed(ord("X"))
	global.keyMenu   = keyboard_check_pressed(ord("Q"))
	global.keyActionH= keyboard_check(vk_space)
	global.keyBackH  = keyboard_check(ord("X"))
	global.keyMenuH  = keyboard_check(ord("Q"))
}

if (room == rm2 && !global.infight && !audio_is_playing(overworld)) audio_play_sound(overworld,0,true)


if room == rm7 && !global.hell && oMenu.itemAmnt<8 {
	global.hell=1;
	itemAdd("Hell");
}
