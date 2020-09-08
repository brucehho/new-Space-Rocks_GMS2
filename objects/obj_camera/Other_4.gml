/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 7A5E45E6
/// @DnDArgument : "obj" "target"
var l7A5E45E6_0 = false;
l7A5E45E6_0 = instance_exists(target);
if(l7A5E45E6_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7B1103F5
	/// @DnDInput : 2
	/// @DnDParent : 7A5E45E6
	/// @DnDArgument : "expr" "clamp( target.x - (cameraWidth/2) , 0, room_width - cameraWidth)"
	/// @DnDArgument : "expr_1" "clamp( target.y - (cameraHeight/2) , 0, room_height - cameraHeight)"
	/// @DnDArgument : "var" "cameraX"
	/// @DnDArgument : "var_1" "cameraY"
	cameraX = clamp( target.x - (cameraWidth/2) , 0, room_width - cameraWidth);
	cameraY = clamp( target.y - (cameraHeight/2) , 0, room_height - cameraHeight);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 2A9084EE
	/// @DnDInput : 3
	/// @DnDParent : 7A5E45E6
	/// @DnDArgument : "function" "camera_set_view_pos"
	/// @DnDArgument : "arg" "view_camera[0]"
	/// @DnDArgument : "arg_1" "cameraX"
	/// @DnDArgument : "arg_2" "cameraY"
	camera_set_view_pos(view_camera[0], cameraX, cameraY);
}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 6D2D9825
/// @DnDInput : 2
/// @DnDArgument : "function" "layer_x"
/// @DnDArgument : "arg" ""Background""
/// @DnDArgument : "arg_1" "cameraX*0.9"
layer_x("Background", cameraX*0.9);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 55F459C9
/// @DnDInput : 2
/// @DnDArgument : "function" "layer_y"
/// @DnDArgument : "arg" ""Background""
/// @DnDArgument : "arg_1" "cameraY *0.9"
layer_y("Background", cameraY *0.9);