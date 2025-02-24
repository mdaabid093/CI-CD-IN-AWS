#!/bin/bash

# Get the running container ID
containerID=$(docker ps -q)

# Check if a container is running before trying to stop/remove it
if [ -n "$containerID" ]; then
    echo "Stopping and removing container: $containerID"
    docker stop "$containerID"
    docker rm -f "$containerID"
else
    echo "No running container found. Skipping removal."
fi

