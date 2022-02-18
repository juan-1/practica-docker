FROM ubuntu
ENV TZ=America/Mexico_City
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update && apt-get install -y apt-utils systemd openssh-server apache2
RUN useradd -ms /bin/bash juan_flo 
RUN usermod -aG sudo juan_flo
RUN su - juan_flo
RUN service ssh start
COPY apache-config.conf /etc/apache2/sites-enabled/000-default.conf
RUN mkdir -p /var/www/prueba/
WORKDIR /var/www/prueba/
COPY ./prueba/* ./
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
EXPOSE 80