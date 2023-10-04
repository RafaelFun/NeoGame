camera_set_view_size(view_camera[0],global.view_width,global.view_height)

if instance_exists(target_){
	
	var x1 = target_.x - global.view_width/2
	var y1 = target_.y - global.view_height/2
	
	x1 = clamp(x1,0,room_width-global.view_width)
	y1 = clamp(y1,0,room_height-global.view_height)
	
	camera_set_view_pos(view_camera[0],x1,y1)
}