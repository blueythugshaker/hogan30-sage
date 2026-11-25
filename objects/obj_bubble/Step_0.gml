y += vsp

if image_xscale <1 {
image_xscale += .01
image_yscale += .01
}


if !place_meeting(x,y,obj_bubbler)
instance_destroy()