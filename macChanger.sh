#!/usr/bin/env bash

sudo ifconfig $1 down
sudo ifconfig $1 hw ether $2
sudo ifconfig $1 up
sudo service NetworkManager restart
