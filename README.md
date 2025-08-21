# autoware.sample_mobile_robot

## About this repository

## Vehicle overview
![Vehicle overview](docs/overview.png)

### Vehicle configuration
- Base vehicle: [WHILL Powered Mobility Platform](https://whill-mrp.notion.site/WHILL-f975baf4015e4eebbb243a7d331efb0a)
- ECU: [ADLINK AVA-3510](https://www.adlinktech.com/products/automotive-computing/autonomous-driving/ava-3510?lang=ja)
- Sensors
  - Lidar: [Hesai XT32](https://www.hesaitech.com/product/xt16-32-32m/)
  - Camera: [TIER IV C1 camera](https://edge.auto/automotive-camera/#C1)
    - Using [GMSL2-10GbE conversion module](https://edge.auto/automotive-camera/#GMSL2-10GbE)
  - IMU: [Tamagawa AU7684](https://mems.tamagawa-seiki.com/product/memsimu.html#p03)

## Repository overview
- [autoware.sample_mobile_robot](https://github.com/tier4/autoware.sample_mobile_robot)
  - Meta-repository containing `.repos` files to construct an Autoware workspace.
- [autoware_launch.sample_mobile_robot](https://github.com/tier4/autoware_launch.sample_mobile_robot)
  - Launch configuration repository containing node configurations and their parameters.
  - Including sensor and vehicle launcher.
- External Repositories
  - [ros2_whill](https://github.com/whill-labs/ros2_whill), [ros2_whill_interfaces](https://github.com/whill-labs/ros2_whill_interfaces)
    - Serial communication to ROS2 message conversion of WHILL vehicle.
  - [autoware_ros2_whill_adapter](https://github.com/tier4/autoware_ros2_whill_adapter)
    - Adapter for connecting autoware and ros2_whill
  - [gmsl](https://github.com/tetsuya-t4/gmsl/tree/feature/custom_timestamp)
    - Camera driver using GMSL-10GbE conversion module

## How to setup

### Software setup
Please refer to the [Autoware Documentation](https://autowarefoundation.github.io/autoware-documentation/main/installation/autoware/source-installation/) for installation instructions.

### Hardware setup

#### Sensors connection
- Lidar
  - Please refer to the manual for the Lidar you are using to set the IP address etc.
- Camera
  - See the [Edge.Auto Documentation](https://tier4.github.io/edge-auto-docs/getting_started/gmsl-10g/gmsl-10g_getting_started_guide.html)
- IMU
  - Set the name of the device port to which the IMU is connected.

#### Sensors calibration
Please refer to the Autoware documentation to perform the required sensor calibration.
- [Intrinsic camera calibration](https://autowarefoundation.github.io/autoware-documentation/main/how-to-guides/integrating-autoware/creating-vehicle-and-sensor-model/calibrating-sensors/intrinsic-camera-calibration/)
- [Lidar-Camera calibration](https://autowarefoundation.github.io/autoware-documentation/main/how-to-guides/integrating-autoware/creating-vehicle-and-sensor-model/calibrating-sensors/lidar-camera-calibration/)

#### Lidar-Camera synchronization
Below is an excerpt from the [Autoware Documentation](https://autowarefoundation.github.io/autoware-documentation/main/how-to-guides/integrating-autoware/integrating-sensors/integrating-cameras/#time-synchronization):
> Although time synchronization is recommended for achieving the best performance across varying speed conditions, it could be omitted in cases where strict control of capture timing is not crucial.
