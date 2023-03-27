# Mobile_Robotics_Final_Project
Course Project of AI3702 of SJTU, 2023 Spring

#### Install Required Packages:

```bash
sudo apt-get install ros-melodic-tf2-sensor-msgs
sudo apt-get install ros-melodic-navigation
sudo apt install ros-melodic-gmapping
```

#### Build

```bash
cd Robotics_Navi_ws
catkin_make
source ./devel/setup.bash
```



#### Start

-   Environment settings:

	```bash
	export TURTLEBOT3_MODEL=waffle
	```

-   Model requirement:
    -   unzip `model.tar.gz` in the folder `~/.gazabo`, and **rename** the folder extracted as `models`

-   Open the virtual environment

    ```bash
    roslaunch turtlebot3_gazebo turtlebot3_world_small_bringup.launch
    ```
    
    Turn off the wire will accelerate the process.
    
-   

