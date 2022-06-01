FROM centos:latest
MAINTAINER kunwarbasant
RUN yum install httpd -y/zip/unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page278/uliya.zip
WORKDIR /var/www/html
RUN unzip uliya.zip
RUN cp -rvf uliya-html/* .
RUN rm -rf uliya-html uliya.zip
CMD ["usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
