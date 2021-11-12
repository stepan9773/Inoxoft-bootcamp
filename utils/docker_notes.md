* make a ```Dockerfile```
* run ```sudo docker build -t myproject .``` NOTE: rename from "myproject"
* run ```sudo docker run -u $(id -u):$(id -g) -v $(pwd):/tf -it --rm -p 8888:8888 myproject``` to get a notebook

OR

* run ```sudo docker run -u $(id -u):$(id -g) -v $(pwd):/tf -it --rm -p 8888:8888 myproject bash``` to get a bash shell

```
FROM tensorflow/tensorflow:latest-jupyter

RUN apt-get update && apt-get install -y git
RUN /usr/bin/python3 -m pip install --upgrade pip

RUN mkdir -p /tf
WORKDIR /tf
ENV PYTHONPATH "${PYTHONPATH}:/tf"

RUN pip install scikit-learn
RUN pip install seaborn
```

