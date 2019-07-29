FROM python:3.6.8

RUN mkdir -p /jupyter/notebooks/data/input
RUN mkdir -p /jupyter/notebooks/data/output

COPY requirements.txt /jupyter
RUN pip3 install -r /jupyter/requirements.txt

RUN rm -rf /jupyter/requirements.txt

RUN rm -rf /root/.cache/pip/*
RUN rm -rf /usr/local/src/*
RUN rm -rf /var/cache/*
RUN rm -rf /root/.cache/*

RUN adduser dscientist
USER dscientist

CMD jupyter notebook --no-browser --ip 0.0.0.0 --port 8888 --NotebookApp.password='' --NotebookApp.token='' /jupyter