#!/bin/bash
echo -n "Welcome to Elastic Artifact Registry"
echo -n "Download ECE Images (y/n): "
echo -n "Download ECE Version (Default 3.7.3): "
read -r ece_pull
echo -n "Download EMS Planet Tiles ~ Warning BIG (y/n): "
read -r planet_pull
echo -n "Download Stack Version (Default 8.15.5): "
read -r stack_version
echo "$planet_pull + $ece_pull"
version=$stack_version
