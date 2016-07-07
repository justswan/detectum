#!/bin/bash
useradd detectum_ansible
mkdir /home/detectum_ansible
mkdir /home/detectum_ansible/.ssh
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDSo70DETrTvfplXQqUz02x2xEeQ3CtYv8SwUZWYfJr5A4U2JhlP9C07pP2Fo83/HtKKK2iakKqQuLFwwicqwIOIbBU1WC04BNOVFVAeYVImXAVHDoT0ha+ZveSVlaTAQBNzjohwUmMeU1jqCZNTbRdXNiKYbjIUZ2gaEH8u532azoxQtPPYKhpXDGj0qEiffoHgixH0eIJEj4vOB/k+oOJm8iSt0HOU++QxX7imzuX4OEcPEILWFMfEeYiKFDBJUTWyhpj30W3MnjI5qDofXpAgToo0/OMzdh7c0Az0uFW0Ogkf0+QdFt3PlBj1jGWEBvPzYQlCPDZ0Twv7e9/6aLx detectum_ansible@indigirka.detectum.com' > /home/detectum_ansible/.ssh/authorized_keys
chown -R detectum_ansible /home/detectum_ansible
chown -R detectum_ansible /home/detectum_ansible/.ssh
echo 'detectum_ansible ALL=(ALL:ALL) NOPASSWD:ALL' >> /etc/sudoers
