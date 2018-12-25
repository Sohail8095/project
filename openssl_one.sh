#! /bin/bash

version="1.1.1"

#install openssl for ubuntu, for $version
wget https://www.openssl.org/source/openssl-$version.tar.gz
tar xvf openssl-$version.tar.gz

#to explore openssl
cd openssl-$version

#to run the file
sudo ./config -Wl,--enable-new-dtags,-rpath,'$(LIBRPATH)'

#to proceed
sudo make

#finall to install
sudo make install

#installed openssl
openssl --version
if [ $? == 0 ]
then
        echo "successfully installed"
else
        echo "not installed"
fi

