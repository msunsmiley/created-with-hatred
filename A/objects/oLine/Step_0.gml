/// @description Insert description here
// You can write your code in this editor

timer++;


if timer<60 alpha +=0.03;
else alpha -=0.03;
if timer==130 instance_destroy();

if redt == 0 red+=3;
if red >= 253 redt = 1;
if redt == 1 red-=3;
if red <= 2 redt = 0;

if bluet == 0 blue+=3;
if blue >= 253 bluet = 1;
if bluet == 1 blue-=3;
if blue <= 2 bluet = 0;

if greent == 0 green+=3;
if green >= 253 greent = 1;
if greent == 1 green-=3;
if green <= 2 greent = 0;


color = make_color_rgb(red,blue,green)





