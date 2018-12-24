#!/bin/bash 

scp -rp /home/ubuntu/one/nvm_node.sh ubuntu@ip-172-31-29-166:~/

ssh  ubuntu@ip-172-31-29-166 '(ls -lrt ~/nvm_node.sh)'
ssh  ubuntu@ip-172-31-29-166 '(bash ~/nvm_node.sh)'
sleep 10
ssh  ubuntu@ip-172-31-29-166 '(cat ~/autom/nvm.log)'

