extends "res://environment/script/Environment.gd"

func _on_Player_load_next_step():
	get_tree().change_scene("res://transition/scene/Transition.tscn");

func _ready():
	var playSound = AudioStreamPlayer.new();
	self.add_child(playSound);
	playSound.stream = load("res://sounds//Andromeda Journey.ogg");
	playSound.play();
