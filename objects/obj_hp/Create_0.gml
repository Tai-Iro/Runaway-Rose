/// @description Insert description here
// You can write your code in this editor

//Maybe move everything in this object to controller, if needed

//old version
//rose1 = instance_create_depth(16,20,depth-1,obj_rose);
//rose2 = instance_create_depth(49,25,depth-1,obj_rose);
//rose2.image_angle=270;
//rose3 = instance_create_depth(80,16,depth-1,obj_rose);
//rose3.image_angle=90;

//new version
roses[1]=instance_create_depth(16,20,depth-1,obj_rose);
roses[2] = instance_create_depth(49,25,depth-1,obj_rose);
roses[2].image_angle=270;
roses[3] = instance_create_depth(80,16,depth-1,obj_rose);
roses[3].image_angle=90;

//tells how many roses are on the health bar
barStatus = 3;