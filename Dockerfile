# NAME: dclong/jdk
FROM dclong/base
# GIT: https://github.com/dclong/docker-base.git

RUN apt-get update -y \
    && apt-get install -y \
        openjdk-8-jdk maven gradle \
    && apt-get purge -y openjdk-11-jre-headless \
    && apt-get autoremove \
    && apt-get autoclean 

COPY scripts /scripts
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
ENV PATH=$PATH:$JAVA_HOME/bin
