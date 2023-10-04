/// @description Insert description here
// You can write your code in this editor


target_ = obj_chat_corp


reso_width = 1280
reso_height = 1720
reso_scale = 2

global.view_width = reso_width/reso_scale
global.view_height = reso_height/reso_scale

//tamanhodo jogo
window_set_size(global.view_width*reso_scale,global.view_height*reso_scale)

surface_resize(application_surface,global.view_width*reso_scale,global.view_height*reso_scale)
