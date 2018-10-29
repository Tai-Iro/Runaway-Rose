if (vsp < 20) { vsp += grav; };

if (place_meeting(x, y + 1, obj_block)) { 
    if is_sliding = false{
        vsp = keyboard_check(vk_space) * -jumpSpeed 
    }
}
if (place_meeting(x + 4, y, obj_block)) {
	x-=4
	//Can (maybe) make spd go down here, since this means player ran into an obstacle
	//SHould also reset counter for increasing speed
}
else{

    if x < 86{
    
        x++
    
    }
    if x > 86{
    
        x--
    
    }

}
if keyboard_check(vk_down){

    is_sliding = true

}else{

    is_sliding = false

}
if x < -256{
//"Game Over" code, maybe should be in controller(?)
//Needs to play losing animation, and add score to highscores if good enough
    room_restart()

}
if (place_meeting(x, y + vsp, obj_block)) { while (!place_meeting(x, y + sign(vsp), obj_block)) { y += sign(vsp); } vsp = 0; } y += vsp;

