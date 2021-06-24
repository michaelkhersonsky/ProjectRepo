sed -i '/SELINUX/s/enforcing/disabled/' /etc/selinux/config && setenforce 0 && systemctl disable firewalld.service && systemctl stop firewalld.service
