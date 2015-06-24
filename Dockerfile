FROM python:3.4

WORKDIR /var/code

ADD . /var/code

RUN pip install -r requeriments.txt

EXPOSE 3000
