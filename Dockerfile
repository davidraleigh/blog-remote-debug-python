FROM ubuntu:latest
MAINTAINER David Raleigh "davidraleigh@gmail.com"

RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
RUN pip install flask

COPY . /opt/src/test

WORKDIR /opt/src/test

ENTRYPOINT ["python"]
EXPOSE 5000
CMD ["blog-remote-debug-python.py"]
