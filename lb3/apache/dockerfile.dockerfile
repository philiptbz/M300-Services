FROM ubuntu:18.04
MAINTAINER Philip Kampfer 
# Updaten des Systems
RUN apt-get update
# installieren des Apache Dienstes + utils
RUN apt-get -q -y install apache2 
RUN apt-get -y install apache2-utils

# Konfiguration Apache
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

# erstellt ein verzeichnis für den apache Dienst
RUN mkdir -p /var/lock/apache2 /var/run/apache2

# starten des apache Diensts
RUN /etc/init.d/apache2 start

# starten des apache Diensts
RUN /etc/init.d/apache2 start

# Port 80 wird freigegeben
EXPOSE 80

# In diesem Ordener müssen die Index.html Files sein
VOLUME /var/www/html

# startet mysql automatically when running a Docker container
CMD /bin/bash -c "source /etc/apache2/envvars && exec /usr/sbin/apache2 -DFOREGROUND"




