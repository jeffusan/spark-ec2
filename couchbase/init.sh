#!/bin/bash

pushd /root > /dev/null

wget http://packages.couchbase.com/releases/4.0.0-rc0/couchbase-server-community-4.0.0-rc0-centos7.x86_64.rpm

rpm --install couchbase-server-community-4.0.0-rc0-centos7.x86_64.rpm
