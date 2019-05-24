FROM python:3.6.8

# RUN adduser datascientist
RUN mkdir -p /home/datascientist/notebooks/data/input
RUN mkdir -p /home/datascientist/notebooks/data/output

COPY requirements.txt /home/datascientist
RUN pip3 install -r /home/datascientist/requirements.txt

RUN rm -rf /root/.cache/pip/*
RUN rm -rf /usr/local/src/*
RUN rm -rf /var/cache/*
RUN rm -rf /root/.cache/*

WORKDIR /home/datascientist/notebooks
RUN adduser datascientist
USER datascientist

CMD jupyter notebook --no-browser --ip 0.0.0.0 --port 8888 --NotebookApp.password='' --NotebookApp.token='' /home/datascientist
