with (obj_player) {
if place_meeting(x,y,obj_water) && obj_player.water = 0{
	repeat(25)
	with instance_create(obj_player.x,obj_player.y,obj_debris)
 sprite_index = spr_waterdrop
 obj_player.water = 1
}	
}