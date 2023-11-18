# Docker command to containerize or dockerize an Apache webserver 

FROM centos:7
LABEL Description="Apache on centos docker image"
RUN yum -y update
RUN yum install -y httpd
COPY index.html /var/www/html
EXPOSE 80
ENTRYPOINT [ "/usr/sbin/httpd" ]
# for ubuntu you'll replace "httpd" with "apache2"
CMD [ "-D", "FOREGROUND"]