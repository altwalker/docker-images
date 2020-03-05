FROM altwalker/graphwalker:latest

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y  \
        git curl wget make \
        build-essential \
        openssl libssl1.0-dev \
        libncursesw5-dev libc6-dev libpq-dev libffi-dev \
        libbz2-dev libgdbm-dev libsqlite3-dev libreadline6-dev libncurses5-dev zlib1g-dev liblzma-dev tk-dev

COPY install-python.sh .
RUN chmod +x install-python.sh

RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py

# Get PyPy3
RUN wget -q -P /tmp https://bitbucket.org/pypy/pypy/downloads/pypy3.6-v7.3.0-linux64.tar.bz2
RUN tar -x -C /opt -f /tmp/pypy3.6-v7.3.0-linux64.tar.bz2
RUN rm /tmp/pypy3.6-v7.3.0-linux64.tar.bz2
RUN mv /opt/pypy3.6-v7.3.0-linux64 /opt/pypy3
RUN ln -s /opt/pypy3/bin/pypy3 /usr/local/bin/pypy3

RUN pypy3 -V

# Get Python 3.4
RUN ./install-python.sh "3.4.9"
RUN python3.4 -V
RUN python3.4 -m pip -h

# Get Python 3.5
RUN ./install-python.sh "3.5.9"
RUN python3.5 -V
RUN python3.5 -m pip -V

# Get Python 3.6
RUN ./install-python.sh "3.6.10"
RUN python3.6 -V
RUN python3.6 -m pip -V

# Get Python 3.7
RUN ./install-python.sh "3.7.6"
RUN python3.7 -V
RUN python3.7 -m pip -V

# Get Python 3.8
RUN ./install-python.sh "3.8.2"
RUN python3.8 -V
RUN python3.8 -m pip -V

# Install tox
RUN python3.8 -m pip install tox
RUN tox --version