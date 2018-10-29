draw_text(0,0,"FPS: " + string_hash_to_newline(fps))

draw_text(0,12,"Score: " + string_hash_to_newline(score))
draw_text(0,24,"Speed: " + string_hash_to_newline(spd))

draw_text(0,36,"Mod test: " + string_hash_to_newline(score mod 1000))
draw_text(0,48,"Div test: " + string_hash_to_newline(score div 1000))

draw_text(0,60,"Gen Mod test: " + string_hash_to_newline(64 mod spd) + ", " + string_hash_to_newline(spd mod 64))
draw_text(0,72,"Gen Div test: " + string_hash_to_newline(64 div spd) + ", " + string_hash_to_newline(spd div 64))