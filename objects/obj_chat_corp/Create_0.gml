
global.morte = 0


vel = 3

hspd = 0

vspd = 0

global.player = obj_chat_corp

lado = 0

movendo = 0

scale_x = 2.0;
scale_y = 2.0;


#region mudar o sprite de acordo com a escolha do player

player = new player_dante()



switch(global.player_escolha){

	case 0: player = new player_eeiris() break;

	case 1: player = new player_dante() break;

	case 2: player = new player_meimei() break;

	case 3: player = new player_tozi() break;

}




#endregion