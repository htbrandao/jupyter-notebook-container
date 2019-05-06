If more libraries ar needed, just add them $name==$version to requirements.txt

$ docker build . -t r1qu3/jupyter:latest

or

$ docker pull r1qu3/jupyter:latest

and

$ docker run -p 8889:8888 --name jupyter-notebook -d r1qu3/jupyter:latest


TODO: Build docker image.