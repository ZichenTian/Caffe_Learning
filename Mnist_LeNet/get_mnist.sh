#!/usr/bin/env sh
# This scripts downloads the mnist data and unzips it.
 
DIR="$( cd "$(dirname "$0")" ; pwd -P )"
cd $DIR
 
echo "Downloading..."　＃下载手写数据集，http后面是手写数据集的网址
 
wget --no-check-certificate http://yann.lecun.com/exdb/mnist/train-images-idx3-ubyte.gz
wget --no-check-certificate http://yann.lecun.com/exdb/mnist/train-labels-idx1-ubyte.gz
wget --no-check-certificate http://yann.lecun.com/exdb/mnist/t10k-images-idx3-ubyte.gz
wget --no-check-certificate http://yann.lecun.com/exdb/mnist/t10k-labels-idx1-ubyte.gz
 
echo "Unzipping..."　＃ 下载完成后解压
 
gunzip train-images-idx3-ubyte.gz
gunzip train-labels-idx1-ubyte.gz
gunzip t10k-images-idx3-ubyte.gz
gunzip t10k-labels-idx1-ubyte.gz
 
# Creation is split out because leveldb sometimes causes segfault
# and needs to be re-created.
 
echo "Done."