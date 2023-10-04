
#region controles
	
	key_up = keyboard_check(vk_up)
	key_down = keyboard_check(vk_down)
	key_left = keyboard_check(vk_left)
	key_right = keyboard_check(vk_right)
	global.key_iten = keyboard_check(ord("Z"))
	
	

	if key_up{
		y = y - vel
}
	if key_down{
		y = y + vel
}
	if key_left{
		x = x - vel
}
	if key_right{
		x = x + vel
}

	var moveH = key_right - key_left
	
	//velocidddadde
	hspd = moveH * vel

	var moveV = key_down - key_up
	
	vspd =  moveV * vel
	
	// evitar prender na parede
	var prev_x = x;
	var prev_y = y;


	if (place_meeting(x, y, Obj_parede)) {
    
	    x = prev_x;
	    y = prev_y;
    
    
	}

	if (place_meeting(x + hspd, y, Obj_parede)) {
   
	    hspd = 0;
	}

	if (place_meeting(x, y + vspd, Obj_parede)) {
    
	    vspd = 0;
	}

	
#endregion

#region animação

//parado
sprite[0][0] = player.Spr_player
sprite[0][1] = player.Spr_player_costa
sprite[0][2] = player.Spr_player_ladoE
sprite[0][3] = player.Spr_player_ladoD
//andando
sprite[1][0] = player.Spr_player_andando
sprite[1][1] = player.Spr_player_costa_andando
sprite[1][2] = player.Spr_player_andando_ladoE
sprite[1][3] = player.Spr_player_andando_ladoD

if key_up{
lado = 1
}
if key_down{
lado = 0
}
if key_left{ 
lado = 2
}
if key_right{
lado = 3
}



if hspd !=0 or vspd!=0  {
movendo = 1
}
else{
movendo = 0
}

// mudar sprite ao andar
sprite_index = sprite[movendo][lado]


#endregion

