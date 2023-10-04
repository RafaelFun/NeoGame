/// @description Insert description here
// You can write your code in this editor


if keyboard_check_pressed(vk_escape) and global.pause_menu = false{
global.pause_menu = true
}

if keyboard_check_pressed(vk_escape) and global.pause_menu = true{
global.pause_menu = false
}
