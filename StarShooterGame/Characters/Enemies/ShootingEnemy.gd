extends "res://Enemy.gd"

signal spawn_laser(Laser, location)

var Laser = preload("res://projectiles/EnemyLaser.tscn")

onready var muzzle = $Muzzle
onready var laser_sound = $LaserSound

func _on_ShootTimer_timeout():
	emit_signal("spawn_laser", Laser, muzzle.global_position)
	laser_sound.play()
