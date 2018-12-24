//SET DEADZONE LIMIT
var deadzone_limit = 0.2;

//GAMEPAD L-STICK MOVEMENT
if gamepad_axis_value(0,gp_axislv) >= -deadzone_limit && gamepad_axis_value(0,gp_axislv) <= deadzone_limit 
&& gamepad_axis_value(0,gp_axislh) >= -deadzone_limit && gamepad_axis_value(0,gp_axislh) <= deadzone_limit
{
image_angle = direction;
speed = 0;
}
else
{
var hlaxis = gamepad_axis_value(0, gp_axislh);
var vlaxis = gamepad_axis_value(0, gp_axislv);
direction = point_direction(0, 0, hlaxis, vlaxis);
speed = point_distance(0 ,0, hlaxis, vlaxis) * 4;
}

//GAMEPAD R-STICK TARGETING
if gamepad_axis_value(0,gp_axisrv) >= -deadzone_limit && gamepad_axis_value(0,gp_axisrv) <= deadzone_limit 
&& gamepad_axis_value(0,gp_axisrh) >= -deadzone_limit && gamepad_axis_value(0,gp_axisrh) <= deadzone_limit
{
image_angle = direction;
}
else
{
var hraxis = gamepad_axis_value(0, gp_axisrh);
var vraxis = gamepad_axis_value(0, gp_axisrv);
image_angle = point_direction(0, 0, hraxis, vraxis);
}
