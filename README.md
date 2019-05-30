# Jupyter Notebook
My own implementation of a Jupyter Notebook container.


```bash
// If more libraries ar needed, just add them "$NAME==$VERSION" (no quotes) to requirements.txt

// Build your image
$ docker build . -t $IMAGE_NAME

// Or pull mine
$ docker pull hbrandao/jupyter:latest

// Run it
$ docker run -p $LOCALHOST_PORT:8888 --name $CONTAINER_NAME -d $IMAGE:$TAG
```

    TODO: || FIXME:
    1- Smaller image
    2- Cluster?
    3- Password protected?