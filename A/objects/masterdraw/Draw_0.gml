/// @description Insert description here
// You can write your code in this editor
var dgrid = ds_depthgrid;
var inst_num = instance_number(par_depthsystem)
//resize grid
ds_grid_resize(ds_depthgrid,2,inst_num)

//add instance info to grid
var yy = 0;
with (par_depthsystem) {
	dgrid[# 0,yy] = id;
	dgrid[# 1,yy] = y;
	yy++;
}

//sort grid
ds_grid_sort(dgrid,1,true)

//loop through grid and draw all
var inst;
for (var i=0; i<inst_num; i++) {
    inst = dgrid[# 0,i];
	with (inst){
		event_perform(ev_draw,0)
	}
	
}
