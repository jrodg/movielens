FROM python:3.10
LABEL maintainer="jrod201d"

# set working directory
WORKDIR /usr/src/app

# set environment variables
ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

# install dependencies
COPY ./dev-req.txt .
RUN pip install --upgrade pip
RUN pip install -r dev-req.txt