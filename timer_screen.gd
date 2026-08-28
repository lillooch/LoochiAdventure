extends Node2D

@onready var Coconut1: TextureRect = $CocoTree/Coconut1
@onready var Coconut2: TextureRect = $CocoTree/Coconut2
@onready var Coconut3: TextureRect = $CocoTree/Coconut3
@onready var Coconut4: TextureRect = $CocoTree/Coconut4
@onready var Coconut5: TextureRect = $CocoTree/Coconut5

@onready var level: RichTextLabel = $Level
@onready var timer: RichTextLabel = $Timer

var time

func _ready() -> void:
	await Timer(5.0) # Replace with function body.
	
	if Global.minigames_done < 3: # if you havent completed 3 minigames yet 
		Global.minigames_done = Global.minigames_done +1
		get_tree().change_scene_to_file("res://scenes/minigame_" + str(Global.minigames_done) + ".tscn") # changes your scene by arranging this frankenstein path. 

	else:
		get_tree().change_scene_to_file("res://scenes/title_screen.tscn") # changes your scene
	
func _process(delta: float) -> void: # runs EVERY FRAME
	match Global.lives: 
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
