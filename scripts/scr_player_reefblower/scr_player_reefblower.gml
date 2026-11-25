function scr_player_reefblower()
{
	
	if move !=0
	xscale = move
	hsp = (xscale * movespeed);
	move = (key_left + key_right);
	    if grounded
	    {
			if move !=xscale
			movespeed = 0
			if move != 0 {
			image_speed = movespeed / 12;
	        sprite_index = spr_shotgun_walk
			movespeed +=.2
			}
			
			if move =0 {
			sprite_index = spr_shotgun_idle
			movespeed = 0
			image_speed = .35;
			}
			if movespeed >= 10
			movespeed = 10
		if key_jump {
	    scr_soundeffect(sfx_jump)
	    sprite_index = spr_jump
	    vsp = -11
		}
		
	}
	
		if !grounded
		{
		if ((!key_jump2) && vsp < 0.5)
	{
	    vsp /= 10
	}
		}
}

