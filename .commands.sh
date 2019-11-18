
#
#
#
#
# Command Scraps
# <> <>
#   >
# =====
#
#
#
#

# print operating system name and info
uname -mnrsv

# check for disk space
df -ah

# ssh with path to identify key pair file
ssh -i ~/Downloads/willmorris/id_rsa willmorris@35.242.191.126

# docker run - tell docker-server to search and download image if not in the image cache.
docker run hello-world

# run docker commands in container by specifying its image and publish its port
docker run -it -d -p 5000:5000 --name container_name image_name

# see docker logs in real-time using follow -f flag, and the container ID name.
docker logs -f dd3fa511699c

# identical to using docker run is the following: pulling the image and creating a container from it
docker create hello-world --name hw_container
docker start <id_output_from_docker_create>

# disk usage for all files within directory, grand total, in Megabyte format output
du -ac -h Megabyte ~/Documents/

# If statement for command existing or not.
if ! [ -x "$(command -v brew)" ]; then fi

# see ports in use and grep any ports that are being listened to
sudo lsof -i -P -n | grep LISTEN

# start docker container from exited (docker ps -a) command, and attach and fotward signal to STDOUT
docker start --attach <container_id>

# alternative to docker start with --attach STDOUT/STDIN, use logs, (this does not restart the container)
docker logs -f <container_id>

# remove all docker related containers, images etc.
docker system prune

# print container ID, and last column from docker ps
docker ps -a | awk '{print , $1, $NF}'

# docker kill or stop command for current containers using awk
docker kill $(docker ps -a | awk '{ORS=" "} !/CONTAINER\ ID/ {print $1}')
# cat into file
# cat << main.go >> EOF

# search for directory n level deep
find . -name wp-content -type d -maxdepth 4

# list files by size
ls -la -S

# when docker stop/kill <container_id>  doesn't work - use this directly
docker container rm <container_id>

# Remove images thru listing
docker rmi $(docker images --filter "dangling=true" -q --no-trunc)

docker images | grep "none"
docker rmi $(docker images | grep "none" | awk '/ / { print $3 }')

# Remove containers thru listing
docker stop $(docker ps -q)

