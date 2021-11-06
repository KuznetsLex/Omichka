extends TextureButton
func _ready():
	self.connect("pressed", self, "_button_pressed")
	add_child(self)

func _button_pressed():
	get_tree().change_scene("res://Home.tscn")
