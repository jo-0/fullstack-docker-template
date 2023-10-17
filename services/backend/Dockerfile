FROM python:3.11

ADD requirements.txt /tmp/requirements.txt

RUN --mount=type=cache,mode=0777,target=/root/.cache/pip \
    pip install --upgrade pip && pip install -r /tmp/requirements.txt

COPY . /backend
WORKDIR /backend
