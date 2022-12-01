
if room = Kitchen
{
draw_self()
	
draw_set_font(fn_small)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_text(x+17,y-8,string(round(speaker.customerPatience/60)) + "s")

if order = "honey"
{
		draw_sprite(spr_honey,0,x,y+3)
}
else if order = "roseHoney"
{
		draw_sprite(spr_rose_honey,0,x,y+3)
}
else if order = "hydrangeaHoney"
{
		draw_sprite(spr_hydrangea_honey,0,x,y+3)
}
else if order = "matchaHoney"
{
		draw_sprite(spr_matcha_honey,0,x,y+3)
}
else if order = "lilacHoney"
{
		draw_sprite(spr_lilac_honey,0,x,y+3)
}
else if order = "daisyHoney"
{
		draw_sprite(spr_daisy_honey,0,x,y+3)
}


}