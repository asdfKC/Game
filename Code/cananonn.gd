extends Node2D

@export var projectile_scene: PackedScene
@export var shoot_direction = Vector2.LEFT # goes to da right

func _on_timer_timeout():
	var p = projectile_scene.instantiate()
	p.global_position = $Muzzle.global_position # OOOOOHOHHH ITS MONEYEYEYEYEY MOENY KEN YMOENY EMOENY
	p.direction = shoot_direction 
	get_tree().current_scene.add_child(p)
	
