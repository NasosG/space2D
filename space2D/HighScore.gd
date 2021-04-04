extends Node

var _score = 0;
const filepath = "user://highscore.txt";

func _ready():
	loadHighScore();

func loadHighScore():
	var file = File.new();
	if not file.file_exists(filepath): return;
	file.open(filepath, File.READ);
	_score = file.get_var();
	file.close();

func saveBestScore():
	var file = File.new();
	file.open(filepath, File.WRITE);
	file.store_var(_score);
	file.close();
	
func setHighScore(newHighScore):
	_score = newHighScore;
	saveBestScore();
