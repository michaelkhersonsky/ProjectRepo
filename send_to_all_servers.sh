#!/bin/bash

#for sname in $(cat hosts); do cat create_ansible_user.sh|ssh ${sname}; done

#for sname in $(cat hosts)
#	do
#       scp etchost_template ${sname}:/root/etchost_template
#      cat copy_etc_host.sh|ssh ${sname}
# done


for sname in $(cat hosts)
       do
       scp /etc/ansible/hosts ${sname}:/etc/ansible/hosts
      cat copy_etc_host.sh|ssh ${sname}
done


