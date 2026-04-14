#!/bin/bash

MAP_NAME=nishishinjuku_autoware_map
                                                                              
ros2 launch autoware_core autoware_core.launch.xml \
    vehicle_model:=whill_vehicle \
    sensor_model:=whill_sensor_kit \
    map_path:=$HOME/autoware_map/$MAP_NAME \
    is_planning_simulation:=true
