/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 6BCBC5C4
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 12CBF8CF
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 0435A9E9
var l0435A9E9_0;
l0435A9E9_0 = mouse_check_button(mb_left);
if (l0435A9E9_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4D48BCD8
	/// @DnDParent : 0435A9E9
	/// @DnDArgument : "var" "cooldown"
	/// @DnDArgument : "op" "3"
	if(cooldown <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 235ED6C3
		/// @DnDParent : 4D48BCD8
		/// @DnDArgument : "xpos" "x"
		/// @DnDArgument : "ypos" "y"
		/// @DnDArgument : "objectid" "obj_bullet"
		/// @DnDArgument : "layer" ""Layer_Bullet""
		/// @DnDSaveInfo : "objectid" "8cd8201f-fdf0-46ca-84b0-5b5fc7fba914"
		instance_create_layer(x, y, "Layer_Bullet", obj_bullet);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 635C6E07
		/// @DnDParent : 4D48BCD8
		/// @DnDArgument : "expr" "4"
		/// @DnDArgument : "var" "cooldown"
		cooldown = 4;
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 081EE456
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cooldown"
cooldown += -1;