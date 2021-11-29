FROM tensorflow/tensorflow:latest-gpu-jupyter

RUN apt-get update && apt-get install -y git
RUN /usr/bin/python3 -m pip install --upgrade pip

RUN mkdir -p /tf
WORKDIR /tf
ENV PYTHONPATH "${PYTHONPATH}:/tf"

RUN pip install scikit-learn
RUN pip install seaborn
RUN pip install mahotas
RUN pip install opencv-python
