#!/bin/bash

mkdir -p /share/installs/ganglia

cp -f ../configs/gmond.conf_nodes /share/installs/ganglia/gmond.conf

cp -f ../configs/gmond.conf_server /etc/ganglia/gmond.conf


cp -f ../configs/gmetad.conf /etc/ganglia/gmetad.conf

pdsh "cp -f /share/installs/ganglia/gmond.conf /etc/ganglia/gmond.conf; service gmond restart"

service gmond restart; 
service gmetad restart;

