
var newX = random_range(room_width * 0.1, room_width * 0.9); // Posição X aleatória
var newY = random_range(room_height * 0.1, room_height * 0.9); // Posição Y aleatória



instance_create_layer(newX, newY,"instances", Obj_sombra); // Cria um novo clone em um local aleatório
