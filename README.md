If more libraries ar needed, just add them $name==$version to requirements.txt

$ docker build . -t jupyter

or

$ docker pull r1qu3/jupyter:latest

and

$ docker run -p 8889:8888 --name jupyter -d jupyter:latest


TODO: Build docker image.