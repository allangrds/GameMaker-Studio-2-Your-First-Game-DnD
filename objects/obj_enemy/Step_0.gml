/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 0A24B0D1
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "ad37153f-baac-4586-a17f-6f566296ecec"
var l0A24B0D1_0 = false;
l0A24B0D1_0 = instance_exists(obj_player);
if(l0A24B0D1_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 51648A20
	/// @DnDParent : 0A24B0D1
	/// @DnDArgument : "x" "obj_player.x"
	/// @DnDArgument : "y" "obj_player.y"
	direction = point_direction(x, y, obj_player.x, obj_player.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 2D3B165D
	/// @DnDParent : 0A24B0D1
	/// @DnDArgument : "speed" "spd"
	speed = spd;
}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 0AFBB80B
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 51F326E0
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 15CD410E
	/// @DnDApplyTo : c27f061e-6ceb-4d5f-be45-6bb5349b0729
	/// @DnDParent : 51F326E0
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "thescore"
	with(obj_score) {
	thescore += 1;
	
	}

	/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
	/// @DnDVersion : 1
	/// @DnDHash : 0FC59EB9
	/// @DnDParent : 51F326E0
	/// @DnDArgument : "sound" "snd_death"
	/// @DnDArgument : "pitch" "random_range(0.8, 1.2)"
	/// @DnDSaveInfo : "sound" "c774c409-42f3-418b-90bd-6a9f059aaadf"
	audio_sound_pitch(snd_death, random_range(0.8, 1.2));

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 2FCD9211
	/// @DnDParent : 51F326E0
	/// @DnDArgument : "soundid" "snd_death"
	/// @DnDSaveInfo : "soundid" "c774c409-42f3-418b-90bd-6a9f059aaadf"
	audio_play_sound(snd_death, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6D52FB72
	/// @DnDParent : 51F326E0
	instance_destroy();
}