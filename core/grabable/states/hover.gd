extends State

@export var Idle_State : State
@export var Select_State : State

@onready var Parent : StateMachine

func _ready() -> void:
	Parent = get_parent() as StateMachine

func On_State_Enter():
	print("hover")
	pass

func _on_hover_area_mouse_exited() -> void:
	Parent.Set_State(Idle_State.name)
	pass # Replace with function body.
