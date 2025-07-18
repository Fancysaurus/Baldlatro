extends State

@export var Hover_State : State

@onready var Parent : StateMachine

func _ready() -> void:
	Parent = get_parent() as StateMachine
	


func _on_hover_area_mouse_entered() -> void:
	Parent.Set_State(Hover_State.name)
	pass # Replace with function body.
