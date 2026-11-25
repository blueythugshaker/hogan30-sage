if (ds_list_find_index(global.saveroom, id) == -1 && global.snickchallenge == 0)
{
	global.combo +=1
	global.combotime = 60
    scr_soundeffect(sfx_escaperumble)
    obj_camera.alarm[1] = 60
    instance_create(x, y, obj_bangeffect)
    instance_create(x, y, obj_slapstar)
    instance_create(x, y, obj_slapstar)
    instance_create(x, y, obj_slapstar)
    instance_create(x, y, obj_baddiegibs)
    instance_create(x, y, obj_baddiegibs)
    instance_create(x, y, obj_baddiegibs)
    with (obj_camera)
    {
        shake_mag = 3
        shake_mag_acc = (3 / room_speed)
    }
    instance_destroy()
	if war = 1
	instance_create(obj_player.x,obj_player.y,obj_bloodbag)
    with (instance_create(x, y, obj_sausageman_dead))
        sprite_index = spr_hungrypillar_dead
    scr_soundeffect(sfx_killenemy)
    instance_create(x, (y + 600), obj_itspizzatime)
    global.panic = 1
    switch room
    {
        case deli_1:
            global.minutes = 0
            global.seconds = 30
            break
			
        case bathroom_1:
            global.minutes = 6
            global.seconds = 1
            break

    }

    global.wave = 0
    global.maxwave = (((global.minutes * 60) + global.seconds) * 60)
    if global.panicbg
        scr_panicbg_init()
    ds_list_add(global.saveroom, id)
}
