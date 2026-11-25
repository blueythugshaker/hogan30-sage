myhour = date_get_hour(date_current_datetime());
var lay_id = layer_get_id("Backgrounds_1")
var back_id = layer_background_get_id(lay_id)

if myhour < 17 {
	if dayalpha !=0
dayalpha = 0
layer_background_visible(back_id,0)
}

if myhour >= 17 {
	if dayalpha != 1
dayalpha = 1
layer_background_visible(back_id, 1)
}
