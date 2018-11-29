//give the window a caption
window_set_caption("Runaway Rose")
//Placeholder audio so that we can have some music in the game
if !audio_is_playing(snd_music){
	audio_play_sound(snd_music,1,1)
}
i = 0 //Counter for block generation
level_change = 0 
level = 0
spawn = true

j=0
j_max=60
spd_max=10
score = 0

gap=0
make=1 //1 is blocks, 0 is gaps

//To make the game choose a random seed every time it's run:
//randomize();

instance_create(0,0,obj_hp);
debug = false
gameover=false