#!/bin/sh

export HANNIBAL_HBASE_VERSION=1.3.0
./create_package

docker build . -t hannibal:latest
