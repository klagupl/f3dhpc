#!/bin/bash


# create user on all nodes, when it already exist on the headnode

# usage ./newuser-node.sh username

USERID=$(id -u $1)
GRPID=$(id -g $1)
echo "User ID is " $USERID ", Group ID is " $GRPID

# we have to keep UIDs the same across the HPC, which is done below

pdsh  groupadd $1 -g $GRPID
pdsh  adduser -M $1 -u $USERID -g $1 -d /home/$1

