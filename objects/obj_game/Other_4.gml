/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7732DD59
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_game"
if(room == rm_game)
{
	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
	/// @DnDVersion : 1
	/// @DnDHash : 4DC3B070
	/// @DnDDisabled : 1
	/// @DnDParent : 7732DD59
	/// @DnDArgument : "soundid" "msc_song"
	/// @DnDSaveInfo : "soundid" "7a084269-e4d7-4b30-a984-be91052cac2b"
	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 01A82214
	/// @DnDDisabled : 1
	/// @DnDParent : 4DC3B070
	/// @DnDArgument : "soundid" "msc_song"
	/// @DnDSaveInfo : "soundid" "7a084269-e4d7-4b30-a984-be91052cac2b"

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 11968E02
	/// @DnDDisabled : 1
	/// @DnDParent : 7732DD59
	/// @DnDArgument : "soundid" "msc_song"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "7a084269-e4d7-4b30-a984-be91052cac2b"


	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 09205FAD
	/// @DnDParent : 7732DD59
	/// @DnDArgument : "steps" "60"
	alarm_set(0, 60);

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 31D3EDEB
	/// @DnDInput : 2
	/// @DnDParent : 7732DD59
	/// @DnDArgument : "script" "spawn_off_camera"
	/// @DnDArgument : "arg" "obj_asteroid"
	/// @DnDArgument : "arg_1" "40"
	/// @DnDSaveInfo : "script" "9a58952c-8bcf-4338-a70d-7a8c8da8ab09"
	script_execute(spawn_off_camera, obj_asteroid, 40);
}