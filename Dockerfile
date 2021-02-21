FROM ubuntu:latest
LABEL Author="Noel Presti" Project="the-Big-SleePy"
USER root

VOLUME Python

RUN apt-get update && apt-get install -y python3

COPY hello_goodbye.sh /usr/local/bin/hello_goodbye.sh
COPY ./Getting-Started-w-Python /Python/Getting-Started-w-Python

RUN chmod 777 /usr/local/bin/hello_goodbye.sh
RUN cd /Python

CMD /bin/bash
