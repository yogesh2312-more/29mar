FROM centos:7
MAINTAINER yogesh,more
RUN yum update -y && yum install httpd -y
RUN echo "ServerName localhost" >> /usr/local/apache/conf/httpd.conf
VOLUME /var/www/html
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
