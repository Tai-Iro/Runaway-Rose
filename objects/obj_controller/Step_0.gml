
/*
Notes for floor generation:
-Probably want to generate a group of blocks in a row, instead of 1-at-a-time
	*This would make it easier to include the spd variable, and generate gaps
-Could make gaps by generating where blocks should go, but then not actually creating the instance
	*Ex: System decides on a 8-block group and then a 3-block group, but doesn't create the latter group
-Or, could have separate code for blocks and gaps, and uses a boolean variable to know which code to use
	*Gap code could randomly decide a distance, then adds that to the x-value when creating the next block group
	
-The level variable (breaks the height into 16-pixel chuncks) is probably a good idea, and could be expanded
-The player's jump height should be determined, and let system use that to decide where platforms should go
	*It shouldn't generate any impossible or pixel-perfect jumps
*/



if level_change = 0{

    a = round(random_range(-2,1))
    if level = 2 && a < 0{
        
        level++
    
    }else{
    level += a
    
    if a < -5{
    
        a = -5
    
    }
    }
    rr = random(10)
    if rr > 9{

        instance_create(gap+640+64+32,360+32+(level * 16) - 128,obj_barrel)
        instance_create(gap+640+96+32,360+32+(level * 16) - 128,obj_barrel)/*
        instance_create(640+128+32,360+32+(level * 16) - 128,obj_barrel)
        instance_create(640+160+32,360+32+(level * 16) - 128,obj_barrel)
        instance_create(640+192+32,360+32+(level * 16) - 128,obj_barrel)*/

    }
    level_change = 128

}
if i = 0{
    /*if spawn{
        instance_create(640,360-64+(level * 16),obj_block)
    }
    i = 64 div spd//16
	*/
	//gap=round(random_range(64,64*3))
	group = round(random_range(2,8))
	for(k=0; k<=group; k++)
	{
		instance_create(gap+640+(64*k),360-64+(level * 16),obj_block)
	}
	i= (group*64 + gap) div spd
	gap=round(random_range(64,64*3)) //0
	group=0
}

level_change--
i--

/*
Notes for spd:
-Player's spd determines score (distance traveled?)
-Should increase gradually over time, probably has a set cap (spd_max)
-The spd should go down when player hits an obstacle (from the side)
	*Potentially when player object's x-value is more to the left than normal
	*When this happens, the counter (or whatever determines when to increase spd) should be reset
		*Ex: If spd increases every 1000 points, reduce
			score by (maybe) 3000 (then they'd need 4000 to make it go up again).
	*Also, the player's trip animation should play, and the obstacle should (probably) break/disappear
*/

score += spd

// Something like this to increase the speed, but needs adjustment
// Also, spd needs to be involved in the instance creation code
/*
if (score>1000 && spd < spd_max && j< j_max)
{
	j++;
} 
if j >= j_max
{
	j=0
	spd+= (spd<spd_max)?1:0
	//spd
}*/
//Spd could also be based off of score, like:
/*if ((score >= 1000) && ((score mod 1000) <= spd))
{
	spd += (spd<spd_max)?1:0
}*/
//Or maybe using div (after testing, this seems more reliable than mod):
if ((score >= 1000) && ((score div 1000)+3 >= spd))
{
	spd += (spd<spd_max)?1:0
}
