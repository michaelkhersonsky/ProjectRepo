#!/bin/bash

userdel -r  ansible

useradd -d /var/ansiblehome ansible -p $(openssl passwd password) && echo "ansible ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/ansible_user

sed -i '/SELINUX/s/enforcing/disabled/' /etc/selinux/config && setenforce 0 && systemctl disable firewalld.service && systemctl stop firewalld.service

