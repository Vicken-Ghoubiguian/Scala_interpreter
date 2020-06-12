#Definition of based image for the generation of Docker image
FROM ubuntu:latest

#Definition of maintainer (me)
LABEL maintainer="ericghoubiguian@live.fr"

#Upgrade and update all installed packages
RUN apt upgrade -y && apt update -y

#Installation of necessary packages on ubuntu based image: curl (client URL request library) and the default java runtime environment (jre)
RUN apt install default-jre curl -y

#Creation of the scala directory
RUN mkdir /scala

#Change the current directory for the newly one scala
WORKDIR /scala

#
RUN curl -R -O https://downloads.lightbend.com/scala/2.13.2/scala-2.13.2.tgz

#
RUN tar -zxf scala-2.13.2.tgz

#Change the current directory for the newly one bin in the newly directory scala-2.13.2
WORKDIR scala-2.13.2/bin

#Define the executable of the Docker container's process
ENTRYPOINT ["./scala"]
