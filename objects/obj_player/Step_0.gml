
//for ease of access:
spd = obj_controller.spd;


if (vsp < 20) { vsp += grav; };

if (place_meeting(x, y + 1, obj_block)) { 
    if is_sliding = false{
        vsp = keyboard_check(vk_space) * -jumpSpeed 
    }
}
if (place_meeting(x + spd /*4*/, y, obj_block)) {
	//Can (maybe) make spd go down here, since this means player ran into an obstacle
	//Should also reset counter for increasing speed
	
	
	//remove any colliding barrels
	//could use collision_rectangle_list or instance_place(x, y, obj_Enemy)
	var _inst = instance_place(x+4, y, obj_barrel);
	if _inst != noone{ //if it's just a barrel, destroy it
		instance_destroy(_inst);
		if image_angle != 0{
			image_angle = -30 //placeholder for tripping animation
		}
	}
	else if collision_rectangle(x-5, x+1+spd, y-25, y-6, obj_block, false, true) != noone
	{
		//if collision at or above the head, just fall
		vsp += grav;
	}
	/*else if stunTimer > 0{
		//skip stuff below
	}*/
	else if collision_rectangle(x-5, x+1+spd, y-5, y+10, obj_block, false, true) != noone
	{
		//if the collision is in the torso area, go up slowly (like climbing)
		//y-=2
		vsp=-.5
	}
	else if collision_rectangle(x-5, x+1+spd, y+11, y+17, obj_block, false, true) != noone
	{
		//if the collision is knees or below, go up quickly (like a short tripping animation)
		//y-=6
		vsp=-2
		//image_angle = -30
	}
	
	//get hurt, and start stunTimer
	if stunTimer <= 0
	{
		stunTimer = 120;
		health -= 1;
		//image_angle = -30
	}
	
	//x-=4
	x-=obj_controller.spd;
	
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
    //room_restart()
	obj_controller.gameover=true;
}
if health < 0{
	//fall over animation, then game over
	//room_restart();
	obj_controller.gameover=true;
}
if y > 512{
	//fell down a ditch
	//room_restart();
	obj_controller.gameover=true;
}

if (place_meeting(x, y + vsp, obj_block)) { 
	while (!place_meeting(x, y + sign(vsp), obj_block))
	{ //moves player pixel-by-pixel until they are right next to the object.
		y += sign(vsp);
	} 
	vsp = 0; 
}

y += vsp;



if stunTimer > 0
{
	//Make the sprite flicker
	if (stunTimer mod 10) < 6
	{
		image_alpha = 0.5
		draw_self();
	}
	else
	{
		image_alpha = 1
		draw_self();
	}
	
	//image_angle += 15
	stunTimer--;
}
if stunTimer == 0
{
	image_alpha = 1
	stunTimer = -1
}
if image_angle != 0
{
	image_angle -= 30
	if image_angle == -360{ image_angle = 0}
}