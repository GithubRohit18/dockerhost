FROM centos:latest
MAINTAINER rsakhare073@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
ADD https://wwww.free-css.com/assetc/files/free-css-templates/download/page247/kindle.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf arkups-kindle/* .
RUN rm -rf _MACOSX markups-kindle kindle.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
