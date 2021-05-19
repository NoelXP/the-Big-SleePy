FROM ubuntu:latest
LABEL Author="Noel Presti" Project="the-Big-SleePy"
USER root

VOLUME Python

RUN apt-get update && apt-get install -y python3

COPY current_python.sh /usr/local/bin/current_python.sh
COPY ./welcome.py /Python/welcome.py
COPY ./Getting-Started-w-Python /Python/Getting-Started-w-Python
COPY ./arcade /Python/arcade


RUN chmod 777 -R /Python/


CMD ["/bin/bash", "/Python/welcome.py"]
