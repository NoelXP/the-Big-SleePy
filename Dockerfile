FROM ubuntu:latest
LABEL Author="Noel Presti" Project="the-Big-SleePy"
USER root

VOLUME Python

RUN apt-get update && apt-get install -y python2

COPY ./welcome.py /Python/welcome.py
COPY ./arcade /Python/arcade


RUN chmod 777 -R /Python/


CMD ["/Python/welcome.py"]
