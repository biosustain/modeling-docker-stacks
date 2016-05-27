FROM jupyter/scipy-notebook:latest
USER root
RUN apt-get -y update && apt-get install -y swig libzmq3-dev libgmp-dev libglpk-dev glpk-utils pandoc python-dev python-pip libxml2 libxml2-dev zlib1g zlib1g-dev bzip2 libbz2-dev libxslt1-dev openbabel

COPY requirements.txt requirements.txt

RUN pip install pip --upgrade
RUN pip install -r requirements.txt

RUN /opt/conda/envs/python2/bin/pip install pip --upgrade
RUN /opt/conda/envs/python2/bin/pip install -r requirements.txt

ADD cameo-notebooks/ /home/jovyan/work/notebooks
ADD templates/ /srv/templates/
RUN chmod a+rX /srv/templates
CMD ipython notebook
