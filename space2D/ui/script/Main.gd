extends Control

func _ready():
	var playSound = AudioStreamPlayer.new();
	self.add_child(playSound);
	playSound.stream = load("res://sounds//Andromeda Journey.ogg");
	playSound.play();

func _on_Play_pressed():
	var playSound = AudioStreamPlayer.new();
	self.add_child(playSound);
	playSound.stream = load("res://sounds//StartGame.ogg");
	playSound.play();
	var timer = Timer.new();
	timer.set_wait_time(1);
	timer.set_one_shot(true);
	self.add_child(timer);
	timer.start();
	yield(timer, "timeout");
	timer.queue_free();
	#get_tree().change_scene("res://environment/scene/gameStory.tscn");
	get_tree().change_scene("res://transition/scene/Transition.tscn");

func _on_Exit_pressed():
	get_tree().quit();
