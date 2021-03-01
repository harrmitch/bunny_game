extends CanvasLayer

func update_gui(lives_left, coins):
	$Control/TextureRect/HBoxContainer/LifeCount.text = lives_left
	$Control/TextureRect/HBoxContainer/CoinCount.text = coins
