//if instance_exists(Obj_tel_mort) exit


var _tp = random_range(-50,50)

//evitar que saia do mapa
if x < 32 {x= 32}
if x > 1760 {x = 1760}
if y < 32 {y = 32}
if y > 1760 {y = 1760}



// seguir o player depois de uma certa distancia
if peeiris = true {
	mp_potential_step_object( global.player.x, global.player.y, 1, Obj_bugeeiris)

	
		mp_potential_step_object( global.player.x, global.player.y, 1, Obj_shadowtozi)
	
	mp_potential_step_object( global.player.x, global.player.y, 1, Obj_nightmer)
	
	mp_potential_step_object( global.player.x, global.player.y, 1, Obj_darkmei)
}



// se não estiver seguindo o player ficar teleportando
if peeiris = false{
	
	// mudar dde direção aleatoriamente

	var _dir = irandom(1)

	if _dir = 1{vert = true hori = false}
	if _dir = 0{hori = true vert = false}

	if vert = true{
		y = y+_tp
		vert = false
		show_debug_message("vert")
	}

	if hori = true{
		x = x+_tp
		hori = false
		show_debug_message("hori")
	}


}

//verificar a distancia entre o player e o objeto
if point_distance(x, y, global.player.x, global.player.y) < 100{
peeiris = true
	
}else{
	peeiris = false

}

