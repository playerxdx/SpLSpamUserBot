FROM python:3.10-slim-buster

WORKDIR /app

RUN apt-get -y update

RUN apt-get -y install git

COPY requirements.txt /app

RUN pip3 install -r requirements.txt

COPY . /app

CMD ["bash", "yashu.sh"]
