
if (obj_player.state == states.tumble && obj_player.movespeed >= 15 && (place_meeting((x + 1), y, obj_player) || place_meeting((x - 1), y, obj_player)))
instance_destroy()
