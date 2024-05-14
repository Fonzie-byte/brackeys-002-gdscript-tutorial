extends Node


func _ready():
	var result = multiply(2.3, 4.6)
	result = multiply(result, 8.9)
	
	print("The result is " + str(result))


# We can statically type arguments and return types!
func multiply(number: float, by: float) -> float:
	return number * by;
