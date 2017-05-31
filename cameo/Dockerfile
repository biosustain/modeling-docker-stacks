FROM python:3.6-slim

RUN apt-get update && apt-get -y upgrade && \
    apt-get install -y --no-install-recommends \
	swig \
        libglpk-dev \
        glpk-utils \
        build-essential && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt && \
    rm -rf /root/.cache /tmp/* /var/tmp/*

ENV REPO_URL="https://api.github.com/repos/biosustain/modeling-private-dependencies/"
COPY load_dependency.py /opt/load_dependency.py
