FROM ubuntu

RUN apt-get update -y \
    && apt-get install -y \
        sudo \
        vim git \
        openjdk-8-jdk maven \
    && apt-get autoremove \
    && apt-get autoclean 

ADD init.sh /
ADD script.sh /

ENTRYPOINT ["/init.sh"]
