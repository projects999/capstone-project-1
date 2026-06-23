#!/bin/bash
yum update -y
yum install httpd -y

systemctl start httpd
systemctl enable httpd

cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
<title> Terraform project 1</title>
</head>
<body>
<h1> Linux web server Deployed using terraform</h1>
</body>
</html>
EOF