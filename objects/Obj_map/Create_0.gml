/// @description Insert description here
// You can write your code in this editor

cell_t = 70

global.dant_save = false
global.eeiris_save = false
global.tozi_save = false
global.mei_save = false

cell_h = room_width div cell_t
cell_v = room_height div cell_t


grid = ds_grid_create(cell_h,cell_v)
ds_grid_clear(grid,0)

randomize()
var _dir = irandom(3)

var port_dant = 1
var port_eeiris = 1
var port_tozi = 1
var port_mei = 1

// se ja salvo
if global.dant_save = true {
	port_dant --
}

if global.eeiris_save = true {
	port_eeiris --
}

if global.mei_save = true {
	port_mei --
}

if global.tozi_save = true {
	port_tozi --
}

//inimigos
var _buggeirirs = 1
var _shadowtozi = 1
var _darkmei = 1

var xx = cell_h div 2
var yy = cell_v div 2
var chances = 1
var passos = 800

for ( var i = 0; i< passos; i++){
	
	if irandom(chances) == chances{
		
		var _dir = irandom(3)
	}
	
	xx+=lengthdir_x(1,_dir*90)
	yy+=lengthdir_y(1,_dir*90)
	
	xx =clamp(xx,2,cell_h-2)
	yy = clamp(yy,2,cell_v-2)
	
	grid[# xx,yy] = 1 //  ===== 	ds_grid_set_region(grid,xx,yy,xx,yy,1)

	
}
// verificar se é chão(0) ou se é parede (1)
for (var xx = 0; xx < cell_h;xx++){

	for (var yy =0; yy < cell_v;yy++){
		
		if grid[# xx,yy] == 0{
		// colocar parede
			instance_create_layer(xx*cell_t,yy* cell_t,"instances",Obj_parede)
			
		}
		
		if grid[# xx,yy] == 1{
		// colocar objs
		var x1 = xx*cell_t + cell_t div 2
		var y1 = yy*cell_t + cell_t div 2
		
			// criar o polayer na room
			if !instance_exists(obj_chat_corp){
				instance_create_layer(x1,y1,"instances",obj_chat_corp)
				
			}
			// criar portas
			if port_dant >0{
				var chances = 20
			
				if irandom(chances) == chances and point_distance(x1,y1,obj_chat_corp.x,obj_chat_corp.y)> 200{
					instance_create_layer(x1,y1,"instances",Obj_por_dante)
					port_dant --
				}
			
			}
			if port_eeiris >0{
				var chances = 20
			
				if irandom(chances) == chances and point_distance(x1,y1,obj_chat_corp.x,obj_chat_corp.y)> 200{
					instance_create_layer(x1,y1,"instances",Obj_por_eeiris)
					port_eeiris --
				}
			
			}
			if port_mei >0{
				var chances = 20
			
				if irandom(chances) == chances and point_distance(x1,y1,obj_chat_corp.x,obj_chat_corp.y)> 200{
					instance_create_layer(x1,y1,"instances",Obj_por_meimei)
					port_mei --
				}
			
			}
			if port_tozi >0{
				var chances = 20
			
				if irandom(chances) == chances and point_distance(x1,y1,obj_chat_corp.x,obj_chat_corp.y)> 200{
					instance_create_layer(x1,y1,"instances",Obj_por_tozi)
					port_tozi --
				}
			
			}
			
			// criar inimigos
			
			
			if _darkmei >0{
				var chances = 20
			
				if irandom(chances) == chances and point_distance(x1,y1,obj_chat_corp.x,obj_chat_corp.y)> 200{
					instance_create_layer(x1,y1,"instances",Obj_darkmei)
					_darkmei --
				}
			
			}
			if _shadowtozi >0{
				var chances = 20
			
				if irandom(chances) == chances and point_distance(x1,y1,obj_chat_corp.x,obj_chat_corp.y)> 200{
					instance_create_layer(x1,y1,"instances",Obj_shadowtozi)
					_shadowtozi --
				}
			}
				
			if _buggeirirs >0{
				var chances = 20
			
					if irandom(chances) == chances and point_distance(x1,y1,obj_chat_corp.x,obj_chat_corp.y)> 200{
						instance_create_layer(x1,y1,"instances",Obj_bugeeiris)
						_buggeirirs --
					}
			
			}
			
			
	
		}
		
		
	}
}
