if (obj_player.shotgunAnim == 0 && obtained = 0 && obj_player.backupweapon == 0 && obj_player.state == states.handstandjump)
{
    obj_player.state = states.reefblower
    obj_player.image_index = 0
    obj_player.sprite_index = spr_shotgun_pullout
    scr_soundeffect(sfx_shotgungot)
	obtained = 1
    
}
