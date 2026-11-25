function scr_player_Sleap(){
scr_getinput()
hsp = (xscale * movespeed);
move = (key_left + key_right); 

if movespeed < 8
movespeed = 8

if movespeed < 12
movespeed +=.5

if (key_up)
vsp -= 0.4;


if (key_down)
vsp += 0.4;


if (grounded)
{
	if !key_up {
flash = 1;
state = states.mach3
sprite_index = spr_mach4;
	}
	if key_up
	vsp = -12
}
if !grounded
sprite_index = spr_superjump;

if vsp > 0
instance_create(x,y,obj_mach3effect);


	    if (place_meeting(x + 1, y,obj_solid) && (!place_meeting((x + sign(hsp)), y, obj_slope)))
	    {
	        image_speed = 0.35;
	 {
		 instance_create(x,y,obj_bumpeffect);
	        flash = 0;
	        combo = 0;
			xscale = -1;
	        mach2 = 0
	        image_index = 0;

			}
		}
		
		
	    if (place_meeting(x - 1, y,obj_solid) && (!place_meeting((x + sign(hsp)), y, obj_slope)))
	    {
	        image_speed = 0.35;
	 {
		 instance_create(x,y,obj_bumpeffect);

			xscale = 1;
	        flash = 0;
	        combo = 0;
	        mach2 = 0
			}
		}

	    if ((scr_solid(x, y - 1)) && (!place_meeting((x + sign(hsp)), y, obj_slope)))
	    {

	        image_speed = 0.35;
	 {
	        flash = 0;
	        combo = 0;

	        vsp = 5;
	        mach2 = 0
	        image_index = 0;
	        instance_create((x + 10), (y + 10), obj_bumpeffect);
			}
		}
image_speed = obj_player.vsp /2;
}