if scrolldirection = 1 {
hsp = 1
vsp = 0
}

if scrolldirection = 2 {
hsp = -1
vsp = 0
}

if scrolldirection = 3 {
hsp = 0
vsp = 1
}

if scrolldirection = 4 {
hsp = 0
vsp = -1
}

if camera = 1 {
x = obj_player.x
y = obj_player.y
scrolldirection = 0
}
if camera = 2 && !place_meeting(x,y,obj_sidescrollstart){
	x = obj_sidescrollstart.x
	y = obj_sidescrollstart.y
scrolldirection = 0
}

x += hsp
y += vsp