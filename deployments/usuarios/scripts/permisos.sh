#!/bin/bash

source /root/auth.sh

useradd -G users -s /sbin/nologin $user_one

echo "$user_one:$pass_user_one" | chpasswd

mkdir -p /home/sftp/$user_one

chown :$user_one /home/sftp/$user_one

chmod 775 /home/sftp/$user_one

useradd -G users -s /sbin/nologin $user

echo "$user:$pas_user" | chpasswd

mkdir -p /home/sftp/$user/upload

chown $user:users /home/sftp/$user/upload

chmod 775 /home/sftp/$user/upload
