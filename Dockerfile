FROM python:3.11.4-alpine3.18

ENV PYTHONUNBUFFERED 1

COPY ./requitments.txt /requitments.txt

RUN python -m venv /py && \
    /py/bin/pip install --upgrade pip&& \
    /py/bin/pip install -r /requitments.txt

ENV PATH="/py/bin:$PATH"

COPY ./app /app
WORKDIR /app