extends State

@export var Hover_State : State

@onready var Parent : StateMachine

var active : bool = false

func _ready() -> void:
	Parent = get_parent() as StateMachine

func On_State_Enter():
	print("Idle")
	active = true
	pass
	
func On_State_End():
	active = false
	pass

func _on_hover_area_mouse_entered() -> void:
	if(active):
		Parent.Set_State(Hover_State.name)
	pass # Replace with function body.
