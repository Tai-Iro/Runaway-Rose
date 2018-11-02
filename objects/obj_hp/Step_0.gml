/// @description Insert description here
// You can write your code in this editor

//Need to make sure it won't go over the max, and this will do for now
if health > 3
{
	health = 3
}
/*if barStatus > 3
{
	barStatus = 3
}*/

if(health < barStatus and barStatus > 0)
{
	roses[barStatus].image_speed = 1;
	barStatus -= 1;
}
else if(health > barStatus and barStatus < 3)
{
	barStatus += 1;
	roses[barStatus].image_speed = -1;
}