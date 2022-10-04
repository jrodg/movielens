FROM python:3.10
LABEL maintainer="jrod201d"

ENV PYTHONUNBUFFERED 1

COPY ./dev-req.txt /tmp/dev-req.txt
COPY ./lint-req.txt /temp/lint-temp.txt
COPY ./app /srv
WORKDIR /srv
EXPOSE 8000

ARG DEV=false
RUN python -m venv /py && \
    /py/bin/pip install --upgrade pip && \
    /py/bin/pip install -r /tmp/dev-req.txt && \
    if [ $DEV = "true" ]; \
        then /py/bin/pip install -r /tmp/requirements.dev.txt ; \
    fi && \
    rm -rf /tmp && \
    adduser \
        --disabled-password \
        --no-create-home \
        django-user

ENV PATH="/py/bin:$PATH"

USER django-user