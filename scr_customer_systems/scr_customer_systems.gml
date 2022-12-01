// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_bear_function(number,bear){

	with obj_counter
	{
		if MyNum = number
		{
			using = true

			customer = other.id
			order = scr_food_choice(bear)
			other.turningY = y - 38
		}
	}
	x = 1276
	y = 944

	state = "approach"
}

function scr_food_choice(bear)
{
	if bear = "brown"
	{
		randomize()
		return(choose("honey","roseHoney"))
	}
	if bear = "graybrown"
	{
		randomize()
		return(choose("hydrangeaHoney","matchaHoney"))
	}
	if bear = "polar"
	{
		randomize()
		return(choose("daisyHoney","lilacHoney"))
	}
	if bear = "panda"
	{
		randomize()
		if obj_game_manager.star = 1
		{
			return(choose("honey","roseHoney"))
		}
		if obj_game_manager.star = 2
		{
			return(choose("hydrangeaHoney","matchaHoney","honey","roseHoney"))
		}
		else
		{
			return(choose("daisyHoney","lilacHoney","hydrangeaHoney","matchaHoney","honey","roseHoney"))
			
		}
	
	
	}
}



//bear emotions
function scr_bearEmotions()
{
	audio_play_sound(sn_cash_register,10,false)
	if customerPatience > 1000
	{
		global.reputation += 1
		repeat round((customerPatience- 1000)/150)
		{
			with instance_create_layer(x+28,y,"GUI",obj_emotions)
			{
				sprite_index = spr_happy
				direction = random_range(0,180)
				speed = random_range(2,3)
			}
		}
		
		
		//inspector panda
		if bearType = "panda"
		{
			
			obj_game_manager.star ++
			instance_create_layer(x,y,"GUI",obj_star_alert)
			global.reputation = 0
		}
		
	}
	
	else
	{
		global.reputation -= 1
		repeat round((1000 - customerPatience)/100)
		{
			with instance_create_layer(x+32,y,"GUI",obj_emotions)
			{
				sprite_index = spr_anger
				direction = random_range(0,180)
				speed = random_range(2,3)
			}
		}
	}
}

function toolTip(msg){
	with obj_tool_tips
	{
		text = msg
		alarm[0] = 10
	}
}
function timedToolTip(msg,time){
	with obj_tool_tips
	{
		text = msg
		alarm[0] = time
	}
}