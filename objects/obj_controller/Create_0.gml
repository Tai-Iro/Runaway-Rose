
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

gameover=false