#!/bin/bash

pushd /root/spark-ec2/zeppelin/zeppelin > /dev/null

echo "Starting Zeppelin..."

./bin/zeppelin-daemon.sh start

popd > /dev/null


