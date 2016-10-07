FROM python:3.5-slim

RUN apt-get -y update && apt-get install -y swig libzmq3-dev libgmp-dev libglpk-dev glpk-utils \
            pandoc python-dev python-pip libxml2 libxml2-dev zlib1g zlib1g-dev bzip2 libbz2-dev libxslt1-dev openbabel \
            build-essential wget curl

RUN pip install scipy numpy pandas numexpr matplotlib SIP
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

ADD load_dependency.py load_dependency.py
ARG GITHUB_TOKEN