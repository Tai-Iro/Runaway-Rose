if !is_sliding{
if place_meeting(x,y+1,obj_block){

    draw_sprite(spr_player_run,-1,x,y)

}else if place_meeting(x+1,y,obj_block){

    draw_sprite(spr_player_run,0,x,y)
    
}else{

    draw_sprite(spr_player_jump,0,x,y)
    image_index = 0

}
}else{


    draw_sprite(spr_slide,0,x,y)

}


