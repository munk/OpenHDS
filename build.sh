#!/bin/bash
cd openhds-rest
./gradlew clean
./gradlew build
sudo docker build -t ohdsrest .
cd ../openhds-ui
./lein clean
./lein ring uberjar
sudo docker build -t ohdsui .
cd ..
sudo docker-compose up
