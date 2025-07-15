class_name State
extends Node

@export var StateName := ""

func On_State_Enter():
	
	pass
	
func On_State_Process(delta : float):
	pass
	
func On_State_End():
	pass

func get_StateName() -> String:
	return StateName
