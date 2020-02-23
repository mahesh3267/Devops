#!/bin/bash

echo "TASK: Update /etc/hosts file"
cat >>/etc/hosts<<EOF
172.42.42.200 ansible-server.example.com ansible-server
172.42.42.201 ansible-agent.example.com ansible-agent
EOF

echo "TASK: Install EPEL Repository" 
yum install epel-release -y
yum install ansible -y

echo "TASK: Generate and Copy the SSH KEY to Agent"
yum install sshpass -y
ssh-keygen -t rsa -q -f "$HOME/.ssh/id_rsa" -N ""
sshpass -p "vagrant" ssh-copy-id -o StrictHostKeyChecking=no vagrant@ansible-agent

echo "TASK: Ammend the ansible Config"
cat >> ~/.ansible.cfg<<EOF
[defaults]
host_key_checking = False
EOF

echo "TASK: Execute Ansible Simple Playbook"
ansible-playbook -i /vagrant/hosts /vagrant/playbook.yml

