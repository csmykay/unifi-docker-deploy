# This is a dockerfile to setup Unifi's Software Data Catalog and Data Prep products within a container.
#Download base image ubuntu 16.04 from docker hub
FROM ubuntu:xenial
LABEL maintainer=chad@unifisoftware.com

# Unifi runtime distribution filename.
ARG UNIFI_MAJOR_VER
ARG UNIFI_MINOR_VER
ARG BUILD_DATE
ARG BUILD_VERSION

#Labels
LABEL major_version=${UNIFI_MAJOR_VER}
LABEL minor_version=${UNIFI_MINOR_VER}
LABEL org.label-schema.schema-version="1.0"
LABEL org.label-schema.build-date=$BUILD_DATE
LABEL org.label-schema.name="ballerinalang/ballerina"
LABEL org.label-schema.description="Unifi Data Platform"
LABEL org.label-schema.url="http://unifisoftware.com/"
LABEL org.label-schema.vcs-url="https://github.com/ballerinalang/container-support"
LABEL org.label-schema.vendor="Unifi Software"
LABEL org.label-schema.version=$BUILD_VERSION
LABEL org.label-schema.docker.cmd="docker run -v ~/ballerina/packages:/ballerina/files -p 9090:9090 -d ballerinalang/ballerina"

#Update Ubuntu Software repositories
RUN apt-get update
RUN ap-get install -y wget curl 
RUN wget https://storage.googleapis.com/unifi-hd-4tb/unifi-release/${UNIFI_MAJOR_VER}/unifing-${UNIFI_MINOR_VER}.tar.gz 
    tar -C /tmp -xzf unifing-${UNIFI_MINOR_VER}.tar.gz \
RUN /tmp/ 

docker build --no-cache=true --build-arg BUILD_DATE=$(date -u +'%Y-%m-%dT%H:%M:%SZ') -t mytool:latest

Hadoop Pre-reqs
wget https://console.cloud.google.com/unifi-hd-4tb/unifi-release/3.4/unifi-prereqs-3.4-dataproc-1.3.tar.gz

Data Platform

wget https://console.cloud.google.com/unifi-hd-4tb/unifi-release/3.4/unifing-3.4.4.tar.gz
Data Catalog

wget https://storage.cloud.google.com/unifi-hd-4tb/unifi-release/3.4/unifing-catalog-3.4.4.tar.gz

