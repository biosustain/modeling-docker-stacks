FROM biosustain/cobra:latest
USER root

ARG GITHUB_TOKEN

RUN python load_dependency.py $GITHUB_TOKEN cplex-python3.5.tar.gz
RUN gzip -d cplex-python3.5.tar.gz
RUN tar --warning=no-unknown-keyword -xvf cplex-python3.5.tar

RUN /bin/bash -c "cd cplex/python/3.4/x86-64_linux/ && /opt/conda/envs/python3.4/bin/pip install ."
RUN /bin/bash -c "cd cplex/python/2.6/x86-64_linux/ && /opt/conda/envs/python2/bin/pip install ."

RUN python load_dependency.py $GITHUB_TOKEN gurobi6.5.1_linux64.tar.gz
RUN gzip -d gurobi6.5.1_linux64.tar.gz
RUN tar --warning=no-unknown-keyword -xvf gurobi6.5.1_linux64.tar

RUN /bin/bash -c "cd /gurobi651/linux64/ && pip install ."
RUN /bin/bash -c "cd /gurobi651/linux64/ && /opt/conda/envs/python2/bin/pip install ."
RUN /bin/bash -c "cd /gurobi651/linux64/ && /opt/conda/envs/python3.4/bin/pip install ."
ENV GUROBI_HOME="/gurobi651/linux64"
ENV PATH="${PATH}:${GUROBI_HOME}/bin"
ENV LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:${GUROBI_HOME}/lib"
