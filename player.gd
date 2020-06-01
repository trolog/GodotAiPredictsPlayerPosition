extends Node2D

var walk_spd = 3

var player_vol = Vector2(1,1)
var old_player_pos

func _ready():
	old_player_pos = global_position
	pass # Replace with function body.
	
func _process(delta):
	handle_movement()
	player_vol = global_position - old_player_pos
	old_player_pos = global_position
	pass
	
func handle_movement():
	if Input.is_action_pressed("a"):
		global_position.x -= walk_spd
	if Input.is_action_pressed("d"):
		global_position.x += walk_spd
	if Input.is_action_pressed("w"):
		global_position.y -= walk_spd
	if Input.is_action_pressed("s"):
		global_position.y += walk_spd;
	look_at(get_global_mouse_position())


	
	
