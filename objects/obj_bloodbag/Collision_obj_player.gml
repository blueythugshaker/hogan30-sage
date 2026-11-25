if (obj_player.state != states.gameover && global.comboevent == 0)
{
	global.comboevent = 1
	global.combo +=1
    global.combotime = 60
    ds_list_add(global.saveroom, id)
}