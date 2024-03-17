#!/bin/bash
sudo docker build -t web:v2 .
docker-compose up -d 
