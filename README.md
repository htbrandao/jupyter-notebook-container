# Jupyter Notebook
My own implementation of a Jupyter Notebook container: https://hub.docker.com/r/hbrandao/jupyter

If more libraries ar needed, just add them `$NAME==$VERSION` to `requirements.txt`

```bash
// Build your image
$ docker build . -t $IMAGE_NAME:$IMAGE_TAG

// Or pull mine
$ docker pull hbrandao/jupyter:latest

// Run it
$ docker run -p $LOCALHOST_PORT:8888 --name $CONTAINER_NAME -d $IMAGE_NAME:$IMAGE_TAG
```
