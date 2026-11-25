function scr_sound()
{
	var snd = argument[irandom((argument_count - 1))]
	global.music = audio_play_sound(snd, 10, true)
	audio_sound_gain(global.music, 0.6, 1)
	
	if instance_exists(obj_camera) {
	if obj_camera.ded = 0
	audio_sound_pitch(snd,1)
	if obj_camera.ded != 0
	audio_sound_pitch(snd,.8)
	}
}
