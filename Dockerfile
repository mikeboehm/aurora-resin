FROM resin/rpi-raspbian:latest

RUN apt-get update && apt-get install -y python python-dev python-pip
RUN apt-get install -y vim

# Install Dropbear.
RUN apt-get install -y dropbear
RUN pip install flask
COPY . /app

CMD ["bash", "/app/start.sh"]