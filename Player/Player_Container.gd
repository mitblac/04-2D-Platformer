extends Node2D

onready var Player = load("res://Player/Player.tscn")
var initial_position = Vector2(200,450)
###export var spawn_location = Vector2(200,450)


#func _physics_process(_delta):
#	var player = get_node_or_null("Player")
#	if player == null:
#		player = Player.instance()
#		player.position = spawn_location
#		player.name = "Player"
#		add_child(player)

func _process(_delta):
	if not has_node("Player"):
		var player = Player.instance()
		player.position = initial_position
		player.name = "Player"
		add_child(player)

