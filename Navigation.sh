tmux new-session -d -s "Env"
tmux send-keys -t "Env" "cd ~/Robotics_Navi_ws; 
    source ./devel/setup.zsh; 
    export TURTLEBOT3_MODEL=waffle;
    roslaunch turtlebot3_gazebo turtlebot3_world_small_bringup.launch;
    exit;
    exec zsh" C-m
    sleep 5
tmux new-session -d -s "Navigation"
tmux send-keys -t "Navigation" "cd ~/Robotics_Navi_ws; 
    source ./devel/setup.zsh; 
    export TURTLEBOT3_MODEL=waffle;
    roslaunch turtlebot3_navigation   turtlebot3_navigation.launch;
    exit;
    exec zsh" C-m
    sleep 5

tmux kill-session -t Navigation
sleep 1
tmux new-session -d -s "Navigation"
tmux send-keys -t "Navigation" "cd ~/Robotics_Navi_ws; 
    source ./devel/setup.zsh; 
    export TURTLEBOT3_MODEL=waffle;
    roslaunch turtlebot3_navigation   turtlebot3_navigation.launch;
    exit;
    exec zsh" C-m
    sleep 5

tmux new-session -d -s "astar"
tmux send-keys -t "astar" "cd ~/Robotics_Navi_ws; 
    source ./devel/setup.zsh; 
    export TURTLEBOT3_MODEL=waffle;
    rosrun astar astar
    # exit;
    exec zsh" C-m
    sleep 5

# tmux new-session -d -s "astar_sol"
# tmux send-keys -t "astar_sol" "cd ~/Robotics_Navi_ws; 
#     source ./devel/setup.zsh; 
#     export TURTLEBOT3_MODEL=waffle;
#     roslaunch astar_sol astar_only.launch;
#     exit;
#     exec zsh" C-m
#     sleep 5
