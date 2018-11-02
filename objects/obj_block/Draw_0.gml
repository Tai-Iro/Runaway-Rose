/// @description Insert description here
// You can write your code in this editor



/*
To draw proper parts of tileset, could:
draw_sprite_part could be used in step (or draw) event
draw parts of the tilemap every step with applicable functions
*/

//draw_sprite_part(tiles_town, 0, xtile*64, ytile*64, 64, 64,x,y);

if type == "house"
{
	if xtile != 1 || y >= 296
	{
		draw_sprite_part(tiles_town, 0, xtile*64, 4*64, 64, 64,x,y);
	}
	else{
		draw_sprite_part(tiles_town, 0, 2*64, 4*64, 64, 64,x,y);
	}
	//draw roof part
	if seg == 0
	{
		draw_sprite_part(tiles_town, 0, roofTile*64, 3*64, 64, 64,x,y-64);
	}
	else if seg == -1
	{
		draw_sprite_part(tiles_town, 0, 1*64, 3*64, 64, 64,x,y-64);
	}
	else if seg == 1
	{
		draw_sprite_part(tiles_town, 0, 4*64, 3*64, 64, 64,x,y-64);
	}
	
	//draw part below
	for(var temp=y+64; temp < 384; temp += 64)
	{
		draw_sprite_part(tiles_town, 0, xtile*64, 5*64, 64, 64, x, temp);
	}
}
else if type == "castle"
{
	//draw castle parts
	draw_sprite_part(tiles_town, 0, xtile*64, ytile*64, 64, 64,x,y);
}
