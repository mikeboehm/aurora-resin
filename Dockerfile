FROM resin/rpi-raspbian:latest

RUN apt-get update && apt-get install -y python python-dev python-pip
RUN apt-get install -y vim
RUN apt-get install -y ruby2.0 && gem install lifx-http

# Install Dropbear.
RUN apt-get install -y dropbear
RUN pip install flask
RUN apt-get install -y git

COPY . /app

# RUN git clone https://github.com/mikeboehm/aurora-web.git /app/aurora-web
# RUN mv aurora-web /app/
# RUN git clone https://github.com/mikeboehm/Aurora.git /app/Aurora
# RUN sh /app/Aurora/install_dependencies.sh




CMD ["bash", "/app/start.sh"]
