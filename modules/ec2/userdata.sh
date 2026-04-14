#!/bin/bash

yum update -y
yum install -y nginx

systemctl start nginx
systemctl enable nginx

aws s3 cp s3://{bucket_name}/index.html /usr/share/nginx/html/index.html || \
echo "<h1>Hello from ${environment} - $(hostname -f)</h1>" > /usr/share/nginx/html/index.html