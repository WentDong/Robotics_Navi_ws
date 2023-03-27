tmux new-session -d -s "Env"
tmux send-keys -t "Env" "cd ~/Robotics_Navi_sws; 
    source ./devel/setup.zsh; 
    export TURTLEBOT3_MODEL=waffle; 
    roslaunch turtlebot3_gazebo turtlebot3_world_small_bringup.launch;
    exit;
    exec zsh" C-m
    sleep 5

tmux new-session -d -s "Slam"
tmux send-keys -t "Slam" "cd ~/Robotics_Navi_sws; 
    source ./devel/setup.zsh; 
    export TURTLEBOT3_MODEL=waffle; 
    roslaunch turtlebot3_slam turtlebot3_slam.launch slam_methods:=gmapping;
    exit;
    exec zsh" C-m
    sleep 5

tmux new-session -d -s "Teleop"
tmux send-keys -t "Teleop" "cd ~/Robotics_Navi_sws; 
    source ./devel/setup.zsh; 
    export TURTLEBOT3_MODEL=waffle; 
    roslaunch turtlebot3_teleop turtlebot3_teleop_key.launch;
    exit;
    exec zsh" C-m
    sleep 5

# mux send-keys -t "webots_ros" "source ~/server_ws/devel/setup.bash; 
#  export ROS_MASTER_URI=http://127.0.0.1:10241;
#  roscore -p 10241;
#  exit;
#  exec bash" C-m
#  sleep 5