extends KinematicBody2D

var speed : int = 400
var jumpforce : int = 1000
var gravity : int = 2500

var vel = Vector2()



func _physics_process(delta):
	vel.y += gravity * delta
	if position.x>1280:
		get_tree().change_scene("res://Main.tscn")
	
	if Input.is_action_pressed("ui_left"):
		vel.x =-speed
		$AnimatedSprite.flip_h = false
	elif Input.is_action_pressed("ui_right"):
		vel.x =speed
		$AnimatedSprite.flip_h = true
	else:
		vel.x=0
		$AnimatedSprite.play("idle")
		
	if Input.is_action_pressed("ui_up") and is_on_floor():
		vel.y -= jumpforce
		
	vel = move_and_slide(vel, Vector2.UP)
	
	
	
	
	
	
