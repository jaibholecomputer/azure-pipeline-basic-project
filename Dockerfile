FROM centos:latest
MAINTAINER ravikumar.kushwha
CMD yum install -y httpd
CMD yum install unzip
CMD yum install zip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip /var/www/html/
WORKDIR /var/www/html
CMD unzip kindle
CMD cp -rvf markups-kindle/*
CMD rm -rf _MACOSX markups-kindle kindle.zip
CMD ["/user/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
