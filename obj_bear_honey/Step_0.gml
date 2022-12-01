if instance_exists(bear)
{
x = bear.x + 19
y = bear.y - 24
depth = bear.depth - 10
}
else
{
	instance_destroy()
}

if room = Kitchen
{
	image_alpha = 1
}
else
{
	image_alpha = 0
}