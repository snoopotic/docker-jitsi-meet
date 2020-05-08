#!/bin/bash

# adds user

read -p "Enter Username: " PROS_USERNAME
read -s -p "Enter Password: " PROS_PASSWORD

docker-compose -f my-compose.yml exec prosody prosodyctl --config /config/prosody.cfg.lua register $PROS_USERNAME meet.jitsi $PROS_PASSWORD

echo "user $PROS_USERNAME added"
