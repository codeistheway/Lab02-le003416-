#!/bin/bash

#install webfs
sudo apt-get update
sudo apt-get install webfs

#update config file with correct port and file location
sudo cp svc-01/webfsd.conf /etc

#copy files to serving location
sudo mkdir -p /srv/html
sudo cp svc-01/html/* /srv/html

#restart webfs
sudo /etc/init.d/webfs restart

