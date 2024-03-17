#!/bin/bash

# Server details
SERVER_USER="Bokeh-lenin-RTS"
SERVER_IP="13.53.169.239"
DOCKER_IMAGE="devops-build"

# Copy Docker image to server
docker save $DOCKER_IMAGE | ssh $SERVER_USER@$SERVER_IP 'docker load'

# Run Docker container on the server
ssh $SERVER_USER@$SERVER_IP "docker-compose -f /path/to/docker-compose.yml up -d"
