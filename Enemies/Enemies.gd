extends Node2D

onready var Enemy1 = load("res://Enemies/enemy1.tscn")
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
	if not has_node("Enemy1"):
		var enemy1 = Enemy1.instance()
		enemy1.name = "Enemy1"
		add_child(enemy1)

