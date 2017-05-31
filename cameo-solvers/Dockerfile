FROM cameo:latest

# Install Cplex with Python bindings.
RUN python3 /opt/load_dependency.py "${GITHUB_TOKEN}" "cplex-python3.5.tar.gz"
RUN tar --warning=no-unknown-keyword -xzvf cplex-python3.5.tar.gz
WORKDIR /opt/cplex-python3.5/cplex/python/3.4/x86-64_linux
RUN python setup.py install && rm -rf build
WORKDIR /

# Install Gurobi with Python bindings.
RUN python3 /opt/load_dependency.py "${GITHUB_TOKEN}" "gurobi6.5.1_linux64.tar.gz"
RUN tar --warning=no-unknown-keyword -xzvf gurobi6.5.1_linux64.tar.gz
WORKDIR /opt/gurobi6.5.1_linux64/gurobi651/linux64
RUN python setup.py install && rm -rf build
WORKDIR /
ENV GUROBI_HOME="/opt/gurobi6.5.1_linux64/gurobi651/linux64"
RUN mkdir "/opt/lib" && ln -s -T "${GUROBI_HOME}/lib/libgurobi65.so" "/opt/lib/libgurobi65.so"
ENV LD_LIBRARY_PATH="/opt/lib:${LD_LIBRARY_PATH}"
