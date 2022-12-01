if obj_game_manager.star >= mStar
{
	locked = false
	image_blend = c_white
}
else
{
	locked = true
	image_blend = c_black
}


if place_meeting(x,y,obj_player) && obj_player.holding = false && obj_player.key_grab = true && global.placing = false && global.HoneyMoney >= cost && locked = false
{
	global.placing = true
	with instance_create_layer(x,y,"GUI",obj_place_flower) {type = other.type costs = other.cost}
	
}
else if place_meeting(x,y,obj_player) && obj_player.key_grab && !audio_is_playing(sn_denied)
{
	audio_play_sound(sn_denied,10,false)
	timedToolTip("If you are truly bankrupt restart the game with 'R' and 'K' held at the same time",400)
}

if place_meeting(x,y,obj_player) && !global.placing
{
	with obj_player
	{
		text = "SPACE"
	}
}