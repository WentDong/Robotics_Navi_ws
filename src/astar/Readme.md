# HW2: ASTAR

## Details in submission:

1.   `demo.mov`: Video.
2.   `Eval.png`: The path from the given source to target is shown in Rviz. The distance and the number of step is shown in terminal.
3.   Folder `astar`: The fold should be put into `./xx_ws/src`

## Some details should be metioned:

1.   To get a better performance on the result, I use *Dijkstra* instead of *astar*, since there is now time constrains.

2.   If you want to test astar, please use line 208 and line 214 instead of line 207 and line 213 in `astar/src/main.cpp`

3.   Here, the distance is still kept as Euclid distance. If you want to set the distance of a step towards conner direction, you can see the result of Total Steps, or you can use line 200 instead of line 199 in `astar/src/main.cpp`.

4.   Inflating is implemented under Euclid distance too. 

5.   Occupancy threshold is set as $0.65$,  if `Maptest.at<uchar>(x, y)< 255 * threshold`, point `(x,y)` is considered as occupied.

     

