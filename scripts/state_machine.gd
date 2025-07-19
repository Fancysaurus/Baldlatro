class_name StateMachine
extends Node2D

@export var DefaultState : State

var state_dict := {}
var current_state : State

func _ready() -> void:
	for child in get_children():
		if child is State:
			print(child.StateName)
			state_dict.set(child.StateName,child)	
	current_state = DefaultState
	call_deferred("activate_default")
	pass

func Set_State(state: String) -> void:
	if(!state in state_dict):
		push_error("State "+ state +" is not in the state dict!")
	current_state.On_State_End()
	current_state = state_dict[state]
	current_state.On_State_Enter()
	pass

func _process(delta: float) -> void:
	current_state.On_State_Process(delta)
	pass

#trying to call this manually wasn't working as expected.
func activate_default():
	current_state.On_State_Enter()
