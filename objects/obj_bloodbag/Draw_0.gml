draw_self()
if global.comboevent = 1 || obj_player.state = states.gameover
draw_healthbar(x - 28,y - 63,x + 26,y + 19,global.combotime * -1,0,c_red,c_red,3,0,0)
else
draw_healthbar(x - 28,y - 63,x + 26,y + 19,0,0,c_red,c_red,3,0,0)
draw_sprite(spr_bloodbag,1,x,y)

if global.comboevent = 1
draw_line_width_color(x,y + 32,obj_player.x,obj_player.y,2,c_red,c_red)