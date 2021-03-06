FROM ubuntu:trusty
LABEL maintainer="hongliuforever@gmail.com"

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y telnet
RUN apt-get install -y curl
RUN apt-get install -y openssh-client
RUN apt-get install -y unzip
RUN apt-get install -y make
RUN apt-get install -y gcc
RUN curl https://www.python.org/ftp/python/2.6.2/Python-2.6.2.tgz -o /tmp/p262.tgz
RUN cd /tmp && tar zxvf p262.tgz
RUN cd /tmp/Python-2.6.2 && ./configure
RUN cd /tmp/Python-2.6.2 && make
RUN cd /tmp/Python-2.6.2 && make install
RUN cd /
RUN apt-get install -y libfreeimage-dev
RUN apt-get install -y python-opengl
RUN apt-get install -y python-qt4-gl
RUN apt-get install -y python-qt4 
RUN apt-get install -y python-numpy

RUN apt-get -y install xauth
RUN apt-get -y install firefox

#Expose a port number
EXPOSE 8887

# Run firefox
CMD firefox