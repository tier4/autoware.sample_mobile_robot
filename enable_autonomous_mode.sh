#!/bin/bash

ros2 topic pub /system/operation_mode/state autoware_adapi_v1_msgs/msg/OperationModeState "{mode: 2, is_autoware_control_enabled: true, is_autonomous_mode_available: true}" --once
ros2 topic pub /control/command/gear_cmd autoware_vehicle_msgs/msg/GearCommand "command: 2" --once
