FROM ubuntu:18.04
RUN apt-get update && apt-get install apache2 -y
RUN echo "server name localhost" >> /etc/apache2/apache2.conf
RUN service apache2 restart
COPY index.html /var/www/html
Expose 80
ENTRYPOINT [ "usr/sbin/apache2ctl", "-D", "FOREGROUND" ]
