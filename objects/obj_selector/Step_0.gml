
if global.escolhendo_player = true{

var _mouse_sobre = position_meeting(mouse_x,mouse_y,id)

var _mouse_click = mouse_check_button(mb_left)


if _mouse_sobre{
	image_speed = .8
	
	if _mouse_click{
	global.player_escolha = player
	
	global.escolhendo_player = false
	}
}else{
	image_speed = 0
}


}

else{
	if keyboard_check(vk_shift){
		
		room_goto(Sala_test)
	}else{
		
		room_goto(cutscene)
	}
}


