# Jupyter Notebook

My own implementation of a Jupyter Notebook container: https://hub.docker.com/r/hbrandao/jupyter

# # Running

```bash
// Build your image
$ docker build . -t $IMAGE_NAME:$IMAGE_TAG

// Or pull mine
$ docker pull hbrandao/jupyter:1.0.0

// Run it
$ docker run -p $LOCALHOST_PORT:8888 --name $CONTAINER_NAME -d $IMAGE_NAME:$IMAGE_TAG
```

# # Libraries

The image will be loaded with the following "```$LIB_NAME==$VERSION```"

    scikit-learn==0.20.2
    numpy==1.15.4
    pandas==0.23.4
    scipy==1.2.0
    matplotlib==3.0.2
    seaborn==0.9.0
    nltk==3.4
    confluent-kafka==0.11.6
    elasticsearch==7.0.0

To install more dependencies, you can add it to ```requirements.txt``` before building the image ***or*** install it using ```pip``` from a jupyter cell:

```bash
$ pip3 install $LIB_NAME
```

##### Enjoy! &#8718;
