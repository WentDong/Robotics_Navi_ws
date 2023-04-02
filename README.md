# Mobile_Robotics_Final_Project
Course Project of AI3702 of SJTU, 2023 Spring

#### Install Required Packages:

```bash
sudo apt-get install ros-melodic-tf2-sensor-msgs
sudo apt-get install ros-melodic-navigation
sudo apt-get install ros-melodic-gmapping
```

#### Build

```bash
cd Robotics_Navi_ws
catkin_make
source ./devel/setup.bash
```



#### Start

-   Model requirement:

  -   unzip `model.tar.gz` in the folder `~/.gazabo`, and **rename** the folder extracted as `models`



-   Building Map

    ```sh
    sh buildmap.sh
    ```


-   Saving Map

	```sh
	sh savemap.sh
	```

-   Navigation 

    ```sh
    sh Navigation.sh
    ```

#### Remark

​	The commands in shell is wriiten for **zsh**, for **bash** or other kinds of shell, please **change all the zsh to bash** and 



# TODOS

## BUILD SLAM

-   让车在RVIZ里面同步运动
-   SLAM 时有地图出现问题的情况
-   ![截屏2023-04-01 20.06.55](/Users/a_dong/Desktop/截屏2023-04-01 20.06.55.png)
-   ![截屏2023-04-01 19.39.12](/Users/a_dong/Desktop/截屏2023-04-01 19.39.12.png)

### NAVIGATION

-   车不会动 
-   现在是全部都改成 `ASTAR/abab/INITIALPOSE` 和 `astar/ababab/target`
-   teleop 可以同时控制GAZEBO 和 RVIZ里的车，但是位置没有同步， RVIZ的车这里面会动
-   好像可以设置初始位置和最终位置，但是没反应，报了一个超时的warning。
-   ![截屏2023-04-01 21.02.33](/Users/a_dong/Desktop/截屏2023-04-01 21.02.33.png)
-   
