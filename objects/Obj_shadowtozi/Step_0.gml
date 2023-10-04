//if instance_exists(Obj_tel_mort) exit

var x_randon = random_range(32,1730)
var y_randon = random_range(32,1730)

if somb <= 5 { // Verifica se o número de clones é menor que 5
	
    instance_create_layer(x_randon, y_randon,"instances", Obj_sombra); // Cria um novo clone
	somb ++
} if somb = 5{
    with (Obj_sombra) {
        // Encontre um clone e destrua-o
        if (other == id) {
            instance_destroy();
			somb--
        }
    }
}



if point_distance(x,y,global.player.x,global.player.y)< 100{
	pertozi = true
}else {
	pertozi = false
}

if pertozi = true{
	mp_potential_step_object( global.player.x, global.player.y, 1, Obj_shadowtozi)

	mp_potential_step_object( global.player.x, global.player.y, 1, Obj_parede)
	
	mp_potential_step_object( global.player.x, global.player.y, 1, Obj_nightmer)
	
	mp_potential_step_object( global.player.x, global.player.y, 1, Obj_bugeeiris)
	
	mp_potential_step_object( global.player.x, global.player.y, 1, Obj_darkmei)
}


