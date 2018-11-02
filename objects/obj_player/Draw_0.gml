if !is_sliding{
	if place_meeting(x,y+1,obj_block){
    //draw_sprite(spr_player_run2,-1,x,y)
	sprite_index = spr_player_run2;
	}
	
	else if place_meeting(x+1,y,obj_block){
    //draw_sprite(spr_player_run2,0,x,y)
	sprite_index = spr_player_run2;
	image_index = 0;
	}
	
	else{

    //draw_sprite(spr_player_jump,0,x,y)
    //image_index = 0
	//for right now
	//draw_sprite(spr_player_run2,8,x,y)
	sprite_index = spr_player_run2
	image_index = 8;
	}
}
else{


    //draw_sprite(spr_slide,0,x,y)
	sprite_index = spr_slide;
	image_index = 0;

}
draw_text(0,150,"stuntimer: " + string_hash_to_newline(stunTimer))
draw_self();
//sprite_index

draw_set_colour(c_black);
draw_circle(x,y,1,false)
draw_circle(x,y,50,true)