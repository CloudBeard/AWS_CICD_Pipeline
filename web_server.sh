yum update -y 
yum install httpd -y 

touch /var/www/html/index.html

cat > index.html << EOF

<!DOCTYPE html>
<html>
  <head>
    <title>This is the title!</title>
  </head>
  <body>
    <h1>CloudBeard Website v1</h1>
  </body>
</html>

EOF

systemctl enable httpd
systemctl start httpd