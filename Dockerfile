FROM ubuntu:latest
LABEL Author="Noel Presti" Project="the-Big-SleePy"
USER root
VOLUME Python
RUN apt-get update && apt-get install -y python3
RUN echo "Hello! Goodbye!"
CMD exit
