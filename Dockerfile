FROM centos:7
MAINTAINER yogesh,more
RUN yum update -y && yum install httpd -y
VOLUME /var/www/html
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
