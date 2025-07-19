extends State

@export var Idle_State : State
@export var Select_State : State

@onready var Parent : StateMachine

var active : bool = false

func _ready() -> void:
	Parent = get_parent() as StateMachine

func On_State_Enter():
	print("hover")
	active = true
	pass

func On_State_Process(delta : float):
	if(Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT)):
		Parent.Set_State(Select_State.name)
	pass

func On_State_End():
	active = false
	pass

func _on_hover_area_mouse_exited() -> void:
	if(active):
		Parent.Set_State(Idle_State.name)
	pass # Replace with function body.
