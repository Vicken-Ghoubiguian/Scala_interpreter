FROM ubuntu:latest

LABEL maintainer="ericghoubiguian@live.fr"

RUN apt upgrade -y && apt update -y

RUN apt install default-jre curl -y

RUN mkdir /scala

WORKDIR /scala

RUN curl -R -O https://downloads.lightbend.com/scala/2.13.2/scala-2.13.2.tgz

RUN tar -zxf scala-2.13.2.tgz

WORKDIR scala-2.13.2/bin

ENTRYPOINT ["./scala"]
