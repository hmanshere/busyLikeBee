draw_self()
draw_set_font(fn_small)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
if locked = false
{
	draw_text(x,y+6,string(type) + "\nCost $" + string(cost))
}
else
{
	draw_text(x,y+6,"LOCKED\nReach "+ string(mStar) + " stars")
}