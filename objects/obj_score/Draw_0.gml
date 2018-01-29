/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 0C3F6F6B
/// @DnDInput : 4
/// @DnDArgument : "var" "vc"
/// @DnDArgument : "value" "view_camera[0]"
/// @DnDArgument : "var_1" "cx"
/// @DnDArgument : "value_1" "camera_get_view_x(vc)"
/// @DnDArgument : "var_2" "cy"
/// @DnDArgument : "value_2" "camera_get_view_y(vc)"
/// @DnDArgument : "var_3" "cw"
/// @DnDArgument : "value_3" "camera_get_view_width(vc)"
var vc = view_camera[0];
var cx = camera_get_view_x(vc);
var cy = camera_get_view_y(vc);
var cw = camera_get_view_width(vc);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 37431010
/// @DnDArgument : "font" "fnt_score"
/// @DnDSaveInfo : "font" "88fe8723-53b8-49b7-9af7-e5cdb9209ad0"
draw_set_font(fnt_score);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 18032FC3
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 30482FD2
draw_set_colour($FFFFFFFF & $ffffff);
draw_set_alpha(($FFFFFFFF >> 24) / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 56F3D442
/// @DnDArgument : "x" "cx + (cw / 2)"
/// @DnDArgument : "y" "cy+ 32"
/// @DnDArgument : "caption" "" Score:""
/// @DnDArgument : "var" "thescore"
draw_text(cx + (cw / 2), cy+ 32, string(" Score:") + string(thescore));