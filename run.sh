#!/bin/sh
set -e

docker stop rosstudio && docker rm rosstudio
docker run --name=rosstudio --cpus="3" -v "$(pwd)/catkin_ws:/home/ros/catkin_ws" -v "$(pwd)/notebooks:/home/ros/notebooks" -p 9000:9000 -p 11311:11311 -t rosstudio 

