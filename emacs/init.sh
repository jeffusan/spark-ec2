#!/bin/bash

pushd /root > /dev/null

mkdir .emacs.d

cd ./.emacs.d

wget https://raw.githubusercontent.com/jeffusan/evil-twin/master/init.org

sudo yum -y install emacs

popd > /dev/null
