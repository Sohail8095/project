#! /bin/bash

version="1.1.1"

#install openssl for ubuntu, for $version
wget https://www.openssl.org/source/openssl-$version.tar.gz > ~/autom/openssl.log
tar xvf openssl-$version.tar.gz

#to explore openssl
cd openssl-$version >> ~/autom/openssl.log

#to run the file
sudo ./config -Wl,--enable-new-dtags,-rpath,'$(LIBRPATH)' >> ~/autom/openssl.log

#to proceed
sudo make >> ~/autom/openssl.log

#finall to install
sudo make install >> ~/autom/openssl.log

#installed openssl
openssl --version >> ~/autom/openssl.log
if [ $? == 0 ]
then
        echo "successfully installed"
else
        echo "not installed"
fi

