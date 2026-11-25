function scr_player_tumble()
{
	if movespeed = 0
	{
		movespeed = 2
		flash = 1
	}
			if scr_slope()
		movespeed += slopespeed
	if key_down && sprite_index != spr_tumbleend
	vsp +=.5
	if key_slap2 && movespeed > 0
	movespeed +=2
	hsp = (xscale * movespeed)
	if (sprite_index == spr_tumblestart)
	if movespeed < 2
	    movespeed += .2
	if (sprite_index == spr_tumble)
	if movespeed <= 12
	    movespeed += .2
	if 	sprite_index = spr_tumbleend {
		if !grounded
		movespeed = -10
		if grounded
		state = states.normal
		image_speed = 0
	}
if movespeed >= 16
instance_create(x,y,obj_mach3effect)
	
	if ((!scr_slope()) && sprite_index == spr_tumblestart && floor(image_index) < 11)
	    image_index = 11
	if (sprite_index == spr_tumblestart && floor(image_index) == (image_number - 1))
	    sprite_index = spr_tumble
	if (place_meeting((x + xscale), y, obj_solid) && (!(place_meeting((x + hsp), y, obj_destructibles))))
	{
	    scr_soundeffect(sfx_tumble4)
		vsp = -6
	    sprite_index = spr_tumbleend
	    image_index = 0
	}
	if key_jump
	    input_buffer_jump = 0
	if ((!key_jump2) && jumpstop == 0 && vsp < 0.5 && stompAnim == 0)
	{
	    vsp /= 2
	    jumpstop = 1
	}
	if (grounded && vsp > 0)
	    jumpstop = 0
	if (input_buffer_jump < 8 && grounded && hsp != 0)
	    vsp = -9
		if sprite_index != spr_tumbleend {
	if movespeed < 1
	image_speed = 0.35
	if movespeed >= 1 
	image_speed = movespeed / 10
		}
}
