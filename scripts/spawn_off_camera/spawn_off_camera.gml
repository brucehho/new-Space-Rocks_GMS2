/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 20964092
/// @DnDInput : 3
/// @DnDArgument : "var" "obj"
/// @DnDArgument : "value" "argument[0]"
/// @DnDArgument : "var_1" "number"
/// @DnDArgument : "value_1" "argument[1]"
/// @DnDArgument : "var_2" "pad"
/// @DnDArgument : "value_2" "64"
var obj = argument[0];
var number = argument[1];
var pad = 64;

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 108DCE9A
/// @DnDArgument : "times" "number"
repeat(number)
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0CBEE49A
	/// @DnDParent : 108DCE9A
	/// @DnDArgument : "var" "boundCheck"
	/// @DnDArgument : "value" "true"
	var boundCheck = true;

	/// @DnDAction : YoYo Games.Loops.While_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 07BC419C
	/// @DnDParent : 108DCE9A
	/// @DnDArgument : "var" "boundCheck"
	/// @DnDArgument : "value" "true"
	while ((boundCheck == true)) {
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 2B39B564
		/// @DnDParent : 07BC419C
		/// @DnDArgument : "var" "xx"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "max" "room_width"
		var xx = (random_range(0, room_width));
	
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 4AA3EC09
		/// @DnDParent : 07BC419C
		/// @DnDArgument : "var" "yy"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "max" "room_height"
		var yy = (random_range(0, room_height));
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 7D5C6CF4
		/// @DnDInput : 6
		/// @DnDApplyTo : 786e84a6-2359-43dd-ad9b-c19e59dc68df
		/// @DnDParent : 07BC419C
		/// @DnDArgument : "var" "boundCheck"
		/// @DnDArgument : "function" "point_in_rectangle"
		/// @DnDArgument : "arg" "xx"
		/// @DnDArgument : "arg_1" "yy"
		/// @DnDArgument : "arg_2" "cameraX -pad"
		/// @DnDArgument : "arg_3" "cameraY - pad"
		/// @DnDArgument : "arg_4" "cameraX +cameraWidth +pad"
		/// @DnDArgument : "arg_5" "cameraY + cameraHeight +pad"
		with(obj_camera) {
			boundCheck = point_in_rectangle(xx, yy, cameraX -pad, cameraY - pad, cameraX +cameraWidth +pad, cameraY + cameraHeight +pad);
		}
	}

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 17AFAA4B
	/// @DnDParent : 108DCE9A
	/// @DnDArgument : "xpos" "xx"
	/// @DnDArgument : "ypos" "yy"
	/// @DnDArgument : "objectid" "obj"
	instance_create_layer(xx, yy, "Instances", obj);
}