
FROM ubuntu:latest 

MAINTAINER Fernando fer.dog9714@gmail.com

RUN apt-get update && apt-get install -y apache2 openssh-server

RUN useradd -ms /bin/bash ElJefe
RUN echo 'ElJefe:123456789' | chpasswd

CMD service apache2 start && service ssh start && tail -f /dev/null

COPY ./examen/* /var/www/html/

expose 80 22
