FROM python:3.8.3-slim-buster

RUN mkdir /app

ADD main.py /app

WORKDIR /app

RUN pip install flask

ENV FLASK_APP=main.py

EXPOSE 5000

CMD flask run