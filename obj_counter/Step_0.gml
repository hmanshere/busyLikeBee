if using = true
{

	ds_list_set(global.counterOpen, MyNum, "Using");


}
else
{

	ds_list_set(global.counterOpen, MyNum, "Open");


}



//order complete
/// @desc Checks Order

if using = true && customer.state = "idle"
{

		//right food
		if onTable = order
		{
			if obj_game_manager.star = 1 && global.reputation = 0
			{
			timedToolTip("Raise your inspector level to get a Inspector Panda to come visit!\nPlease the Panda and gain a star! The more stars the better the resturaunt",800)
			}
			amount =  round(customer.customerPatience*2/1000)
			with instance_create_layer(customer.x,customer.y,"GUI",obj_more_money) {moneyInput = other.amount}
			alarm[1] = 60
			stop = true
			with customer
			{
				honey = other.onTable
				alarm[1] = 90
				scr_bearEmotions()
				state = "emotions"
			}
			

		}
		
		//speak what food u want sis
		with obj_bear_speak
		{
			if speaker = other.customer
			{
				order = other.order
			}
		}
}


if place_meeting(x,y,obj_player) && (plate or obj_player.holding)
{
	with obj_player
	{
		text = "SPACE"
	}
}