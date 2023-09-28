FROM amazonlinux
RUN yum update -y
RUN yum install httpd -y
COPY . /var/www/html/
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
