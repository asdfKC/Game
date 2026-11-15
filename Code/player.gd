extends CharacterBody2D

const SPEED = 300.0
const GRAVITY = 1200.0
const BOUNCE_VELOCITY = -600.0

func _physics_process(delta):
	var inpdir = Input.get_axis("ui_left", "ui_right")
	velocity.x = inpdir * SPEED
		
	if not is_on_floor():
		velocity.y += GRAVITY * delta
	else:
		velocity.y = BOUNCE_VELOCITY

	move_and_slide()


func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("Coin"):
		area.queue_free()
	elif area.is_in_group("Spike"):
		get_tree().reload_current_scene.call_deferred()
	elif area.is_in_group("gnd"):
		get_tree().reload_current_scene.call_deferred()
