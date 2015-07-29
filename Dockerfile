FROM resin/rpi-raspbian:latest

RUN apt-get update && apt-get install -y python python-dev python-pip
RUN apt-get install -y vim
RUN apt-get install -y ruby2.0 && gem install lifx-http

# Install Dropbear.
RUN apt-get install -y dropbear
RUN pip install flask
#RUN apt-get install -y git
#RUN git clone git@github.com:mikeboehm/Aurora.git
COPY . /app

CMD ["bash", "/app/start.sh"]
