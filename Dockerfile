FROM jupyter/base-notebook

USER root

WORKDIR /
COPY ./requirements.txt /

RUN apt update -y

RUN apt install python3 -y
RUN apt install git -y
RUN apt isntall python3-pip -y

RUN pip3 install -r requirements.txt

RUN rm -rf /root/.cache/pip/*
RUN apt autoremove -y
RUN apt clean
RUN rm -rf /usr/local/src/*

RUN mkdir -p /notebooks/data/input
RUN mkdir -p /notebooks/data/output

EXPOSE 8889

CMD [ "jupyter-notebook" ]