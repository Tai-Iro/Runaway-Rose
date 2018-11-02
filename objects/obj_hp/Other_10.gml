/// @description Change Health Bar test
// Call this when player's health changes

//

//hp.event_perform_object(obj_hp, ev_other, ev_user0);
//event_perform_object(hp, ev_other, ev_user0);
/*
if(health < barStatus and barStatus > 0)
{
	roses[barStatus].image_speed=0.2;
	barStatus -= 1;
	
	//call this again, just in case it's still not accurate (say, if player lost 2 hp at once)
	event_user(0);
}