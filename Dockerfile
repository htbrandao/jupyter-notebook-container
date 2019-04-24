FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y python3
RUN apt-get install -y python3-pip

COPY ./requirements.txt /
RUN pip3 install -r requirements.txt

RUN rm -rf /root/.cache/pip/*
RUN apt autoremove -y

RUN apt clean
RUN rm -rf /usr/local/src/*

RUN adduser datascientist
USER datascientist

RUN mkdir -p /home/datascientist/notebooks/data/input
RUN mkdir -p /home/datascientist/notebooks/data/output
WORKDIR /home/datascientist/notebooks

CMD jupyter notebook --no-browser --ip 0.0.0.0 --port 8888 --NotebookApp.password='' --NotebookApp.token='' /home/datascientist