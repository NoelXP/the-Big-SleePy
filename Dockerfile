FROM ubuntu:latest
LABEL Author="Noel Presti" Project="the-Big-SleePy"
USER root

VOLUME Python

RUN apt-get update && apt-get install -y python3

COPY current_python.sh /usr/local/bin/current_python.sh
COPY ./Getting-Started-w-Python /Python/Getting-Started-w-Python

RUN chmod 777 /usr/local/bin/current_python.sh
RUN chmod 777 /Python/Getting-Started-w-Python/construct.py


CMD current_python.sh
