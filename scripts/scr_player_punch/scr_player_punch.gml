function scr_player_punch()
{
	    if logan {
	        hsp = xscale * movespeed
	        move = key_left + key_right
	        momemtum = 1
	        dir = xscale
			
			if key_slap2 {
			state = states.tacklecharge
			sprite_index = spr_player_charge
			anton = 100
			movespeed +=2
			}
			
	        if ((!key_jump2) && jumpstop == 0 && vsp < 0.5 && stompAnim == false)
	        {
	            vsp /= 10
	            jumpstop = 1
	        }
	        if (move != xscale && move != 0)
	            state = states.normal
	        if (floor(image_index) == (image_number - 1))
	            state = states.normal
	        if (movespeed < 12)
	            movespeed += 0.35
	        landAnim = false
	        if (key_down && grounded && vsp > 0)
	        {
	            grav = 0.5
	            sprite_index = spr_crouchslip
	            machhitAnim = false
	            state = states.crouchslide
	            movespeed = 15
	        }
	        if key_jump
	            input_buffer_jump = 0
	        if (grounded && input_buffer_jump < 8)
	        {
	            scr_soundeffect(sfx_jump)
	            instance_create(x, y, obj_highjumpcloud2)
	            vsp = -9
	        }
	        if (scr_solid((x + 1), y) && xscale == 1 && (!(place_meeting((x + sign(hsp)), y, obj_slope))) && (!(place_meeting((x + xscale), y, obj_destructibles))))
	        {
	            scr_soundeffect(sfx_bumpwall)
	            grav = 0.5
	            movespeed = 0
	            state = states.bump
	            hsp = -2.5
	            vsp = -3
	            mach2 = 0
	            image_index = 0
	            machslideAnim = true
	            machhitAnim = false
	            instance_create((x + 10), (y + 10), obj_bumpeffect)
	        }
	        if (scr_solid((x - 1), y) && xscale == -1 && (!(place_meeting((x + sign(hsp)), y, obj_slope))) && (!(place_meeting((x + xscale), y, obj_destructibles))))
	        {
	            scr_soundeffect(sfx_bumpwall)
	            grav = 0.5
	            movespeed = 0
	            state = states.bump
	            hsp = 2.5
	            vsp = -3
	            mach2 = 0
	            image_index = 0
	            machslideAnim = true
	            machhitAnim = false
	            instance_create((x - 10), (y + 10), obj_bumpeffect)
	        }
	        if ((!instance_exists(obj_slidecloud)) && grounded && movespeed > 5)
	        {
	            with (instance_create(x, y, obj_slidecloud))
	                image_xscale = other.xscale
	        }
	        image_speed = 0.35;
	}
}
