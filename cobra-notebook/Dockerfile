FROM jupyter/scipy-notebook:latest
USER root
RUN apt-get -y update && apt-get install -y swig libzmq3-dev libgmp-dev libglpk-dev glpk-utils pandoc python-dev python-pip libxml2 libxml2-dev zlib1g zlib1g-dev bzip2 libbz2-dev libxslt1-dev

RUN pip install pip --upgrade
RUN pip install bokeh plotly swiglpk lxml
RUN pip install python-libsbml
RUN pip install git+https://github.com/biosustain/cameo.git@devel#egg=cameo

RUN /opt/conda/envs/python2/bin/pip install pip --upgrade
RUN /opt/conda/envs/python2/bin/pip install bokeh plotly swiglpk lxml
RUN /opt/conda/envs/python2/bin/pip install python-libsbml
RUN /opt/conda/envs/python2/bin/pip install git+https://github.com/biosustain/cameo.git@devel#egg=cameo

ADD notebooks/ /home/jovyan/work/notebooks
ADD templates/ /srv/templates/
RUN chmod a+rX /srv/templates
CMD ipython notebook
