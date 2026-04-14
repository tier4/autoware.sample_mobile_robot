# Autoware Sample Mobile Robot

## Planning Simulation

### Build
```bash
$ git clone git@github.com:tier4/autoware.sample_mobile_robot.git
$ cd autoware.sample_mobile_robot
$ git checkout upstream/autoware_core/latest
$ mkdir -p src
$ vcs import src < autoware.repos

# Apply patch for autoware_core
$ pushd src/autoware/core/
$ patch -p1 < ../../../autoware_core.patch
$ popd

# Build
$ colcon build --base-paths ./src --symlink-install --cmake-args -DCMAKE_BUILD_TYPE=Release
```

### Run

#### Terminal 1
```bash
$ source install/setup.bash
$ ./run_psim.sh
```

Then set the initial pose and the goal point in Rviz.

#### Terminal 2
Trigger the autonomous mode with the following command in the terminal.
```bash
$ source install/setup.bash
$ ./enable_autonomous_mode.sh
```
