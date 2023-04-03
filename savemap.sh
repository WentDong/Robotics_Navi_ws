tmux new-session -d -s "SaveMap"
tmux send-keys -t "SaveMap" "cd ~/Robotics_Navi_ws; 
    source ./devel/setup.zsh; 
    export TURTLEBOT3_MODEL=waffle;
    cd src/turtlebot3/turtlebot3_navigation/maps; 
    rosrun map_server map_saver -f map;
    exit;
    exec zsh" C-m
    sleep 5