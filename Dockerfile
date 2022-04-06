FROM centos:latest
MAINTAINER smilesbhargavi@gmail.com
RUN yum install -y httpd\ 
  zip \
  unzip

ADD https://www.free-css.com/assets/files/free-css-templates/downloads/page247/kindle.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip kindle.zip
RUN cp -rvf markups-kindle kindle.zip
CMD ["/usr/local/sbin", "-D","FOREGROUND"]
EXPOSE 80
