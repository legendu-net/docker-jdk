FROM ubuntu_b

RUN apt-get update -y \
    && apt-get install -y \
        openjdk-8-jdk \
    && apt-get autoremove \
    && apt-get autoclean 
