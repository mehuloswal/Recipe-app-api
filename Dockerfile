FROM python:3.7-alpine
MAINTAINER Mehul Oswal

ENV PYTHONUNBUFFERED 1 

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

# -d for running application only 
# for security purposes we make a user.
RUN adduser -D user 
USER user
