/// @description Insert description here
// You can write your code in this editor

if global.pause_menu = true{
	


// menu do jogo
	var mx = device_mouse_x_to_gui(0)
	var my = device_mouse_y_to_gui(0)
	
	
draw_set_font(Font_inicial)
draw_set_halign(fa_center)
draw_set_valign(fa_center)

var tam_menu = array_length(pausa)
for (var i = 0; i < tam_menu; i++){
	var wgui = display_get_gui_width()
	var hgui = display_get_gui_height()	
	
	var hstr = string_height("I")
	var wstr = string_width(pausa[i])
	
	var x1 = wgui/2 - wstr/2
	var y1 = hgui/2 - hstr/2 + hstr * i
	
	var x2 = wgui/2 + wstr/2
	var y2 = hgui/2 + hstr/2 + hstr * i
	
	if point_in_rectangle(mx,my,x1,y1,x2,y2){
		escala = 1.2 
		cor = c_yellow
	
		if mouse_check_button_pressed(mb_left){
			switch pausa[i]{
				case pausa[0]: global.pause_menu = false
				case pausa[1]: 
				case pausa[2]: room_goto(opcao_inicial)
				case pausa[3]: game_end()
			
			}
		
			
			}
		}
		
	else{
		escala = 1
		cor = c_white
		}

	
	draw_text_transformed_color(wgui/2, hgui/2 + hstr * i, pausa[i], escala, escala, 0, cor, cor, cor, cor,1)
	
	}	
}