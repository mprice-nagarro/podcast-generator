FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3.12 \
    python3-pip \
    git

#RUN pip3 install PyYAML
RUN python -m venv my-venv
RUN my-venv/bin/pip3 install PyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]