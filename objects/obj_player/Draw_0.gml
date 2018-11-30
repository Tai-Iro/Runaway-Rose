if !is_sliding{
	
	//if hurt, change the sprite info
	if(stunTimer > 118){
		sprite_index = spr_player_hurt;
		image_index = 0;
		//image_speed = 0.12;
	}
	
	if /*(stunTimer > 0) && */(sprite_index == spr_player_hurt){
		//after hurt anim ends, change back to normal sprite info
		//could also just use an "Animation End" event
		if (stunTimer < 100) && (image_index < 1){
			sprite_index = spr_player_run2;
			image_index = 0;
			//image_speed = 0.27;
		}
	}
	else if place_meeting(x,y+1,obj_block){
    //draw_sprite(spr_player_run2,-1,x,y)
	//if (sprite_index != spr_player_hurt){
		sprite_index = spr_player_run2;
	//}
	}
	
	else if place_meeting(x+1,y,obj_block){
    //draw_sprite(spr_player_run2,0,x,y)
	//if (sprite_index != spr_player_hurt){
		sprite_index = spr_player_run2;
		image_index = 0;
	//}
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
if obj_controller.debug = true{
	draw_text(0,150,"stuntimer: " + string_hash_to_newline(stunTimer))
	draw_text(0,175,"index: " + string_hash_to_newline(image_index))
	draw_text(0,200,"number: " + string_hash_to_newline(image_number))
}
draw_self();
//sprite_index
if obj_controller.debug = true{
	draw_set_colour(c_black);
	draw_circle(x,y,1,false)
	draw_circle(x,y,50,true)
}