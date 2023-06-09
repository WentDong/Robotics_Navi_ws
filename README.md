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

-   Navigation Environment setup 

    ```sh
    sh Navigation.sh
    ```

#### Remark

-   The commands in shell is wriiten for **zsh**, for **bash** or other kinds of shell, please **change all the zsh to bash**.

-   We use `astar` written by ourselves, the `astar_sol` was used to debug and compare.

#### Control

-   **USE** `rqt` to set the value of topic `/move_base_simple/goal`

