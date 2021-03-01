extends Node2D

var lives = 5
var coins = 0
const TARGET_COINS = 5

func _ready():
	add_to_group("Gamestate")
	update_gui()

func hurt():
	lives -= 1
	update_gui()
	$Player.hurt()
	if lives < 0:
		end_game()

func update_gui():
	get_tree().call_group("GUI", "update_gui", str(lives), str(coins))

func coin_up():
	coins += 1
	update_gui()
	var multiple_of_coins = (coins % TARGET_COINS) == 0
	if multiple_of_coins:
		life_up()

func life_up():
	lives += 1
	update_gui()

func end_game():
	get_tree().change_scene("res://Levels/GameOver.tscn")
