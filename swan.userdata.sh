#!/bin/bash
useradd swan 
mkdir /home/swan
mkdir /home/swan/.ssh
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAIEAy7GpNK3qIr4SWtoqXWwef5g7ygaWuqHLzzZgBj7TCuihYU5LOlauZ0iNAuQwk1lMN0DVKI0vyS/d/pk6sKr/TmbhRr/Q4n0WYPl+j9ixti67277ApshTK3XYjoSUsqqn/Y718gvsvzY97h5M+MU5U8HX8Khdrif0DhiBJ2W2BWE= swan@swan' > /home/swan/.ssh/authorized_keys
chown -R swan /home/swan
chown -R swan /home/swan/.ssh
echo 'swan ALL=(ALL:ALL) NOPASSWD:ALL' >> /etc/sudoers.d/swan
