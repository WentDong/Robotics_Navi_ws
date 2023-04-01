tmux new-session -d -s "Navigation"
tmux send-keys -t "Navigation" "cd ~/Robotics_Navi_sws; 
    source ./devel/setup.zsh; 
    export TURTLEBOT3_MODEL=waffle;
    roslaunch turtlebot3_navigation   turtlebot3_navigation.launch;
    exit;
    exec zsh" C-m
    sleep 5
    
tmux new-session -d -s "Env"
tmux send-keys -t "Env" "cd ~/Robotics_Navi_sws; 
    source ./devel/setup.zsh; 
    export TURTLEBOT3_MODEL=waffle;
    roslaunch turtlebot3_gazebo turtlebot3_world_small_bringup.launch;
    exit;
    exec zsh" C-m
    sleep 5
