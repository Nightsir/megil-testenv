FROM ubuntu:14.04.5
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y software-properties-common python-software-properties

RUN add-apt-repository ppa:linuxuprising/java
RUN apt-get update

RUN apt-get install -y libx11-6

RUN echo debconf shared/accepted-oracle-license-v1-1 select true | \
    debconf-set-selections

RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | \
        debconf-set-selections

RUN apt-get install -y oracle-java10-installer


RUN apt-get update
RUN apt-get upgrade -y
