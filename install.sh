#!/bin/bash

pwd_dir=`pwd`
echo $pwd_dir

cp $pwd_dir/vimrc ~/.vimrc
cp $pwd_dir/vimrc.bundles ~/.vimrc.bundles

vim $pwd_dir/vimrc
