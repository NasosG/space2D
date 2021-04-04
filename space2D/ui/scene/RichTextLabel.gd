extends RichTextLabel

const HIGHSCORE = "HIGHSCORE : ";

func _ready():
	HighScore.loadHighScore();
	set_text(HIGHSCORE + str(HighScore._score));
