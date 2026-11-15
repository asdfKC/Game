extends Area2D

var speed = 500.0
var direction = Vector2.DOWN

func _physics_process(delta):
	position += direction * speed * delta

func _on_body_entered(body):
	if body.name == "Player":
		get_tree().reload_current_scene.call_deferred()
		queue_free()
