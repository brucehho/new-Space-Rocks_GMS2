/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3B95F78C
/// @DnDArgument : "var" "room"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "rm_game"
if(!(room == rm_game))
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 754A85E3
	/// @DnDParent : 3B95F78C
	exit;
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 56B9F30E
/// @DnDArgument : "steps" "room_speed*1"
alarm_set(0, room_speed*1);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 4118C152
/// @DnDInput : 2
/// @DnDArgument : "script" "spawn_off_camera"
/// @DnDArgument : "arg" "obj_asteroid"
/// @DnDArgument : "arg_1" "1"
/// @DnDSaveInfo : "script" "9a58952c-8bcf-4338-a70d-7a8c8da8ab09"
script_execute(spawn_off_camera, obj_asteroid, 1);