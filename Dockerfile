FROM ubuntu:latest
LABEL Author="Noel Presti" Project="the-Big-SleePy"
USER root

VOLUME Python

RUN apt-get update && apt-get install -y python3

ADD hello_goodbye.sh /usr/local/bin/hello_goodbye.sh

RUN chmod 777 /usr/local/bin/hello_goodbye.sh

CMD /usr/local/bin/hello_goodbye.sh
