#!/bin/bash

# Add Remote Server Credentials
host="root@website.xyz"
PASS="yoursecretpassword"

# Path of exclude file 
exc="/root/exclude.txt"

# Source and Destination Path
fastdl_source_dir="/root/docker/serverfiles/cstrike/"
fastdl_destination_dir="/var/www/cstrike/"

# Execute Command
# sshpass and rsync package is required for this to run

sshpass -p ${PASS} rsync -zahP -e "ssh -o StrictHostKeyChecking=no" --exclude-from=${exc} --delete ${fastdl_source_dir} ${host}:${fastdl_destination_dir} &&

exit
