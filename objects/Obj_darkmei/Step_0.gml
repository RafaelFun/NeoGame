//if instance_exists(Obj_tel_mort) exit

if point_distance(x, y, global.player.x, global.player.y) < 100{
permei = true
	
}else{
	permei = false

}

if permei = true {
	mp_potential_step_object( global.player.x, global.player.y, 1, Obj_bugeeiris)

	mp_potential_step_object( global.player.x, global.player.y, 1, Obj_parede)

	mp_potential_step_object( global.player.x, global.player.y, 1, Obj_shadowtozi)
	
	mp_potential_step_object( global.player.x, global.player.y, 1, Obj_bugeeiris)
	
	mp_potential_step_object( global.player.x, global.player.y, 1, Obj_darkmei)
}