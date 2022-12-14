FROM altwalker/graphwalker:latest

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y  \
        git curl wget make \
        build-essential python3-dev python3-setuptools python3-pip python3-smbus \
        libncursesw5-dev libgdbm-dev libc6-dev \
        zlib1g-dev libsqlite3-dev tk-dev \
        libssl-dev openssl \
        libffi-dev

COPY install-python.sh .
COPY install-pypy.sh .
RUN chmod +x install-python.sh
RUN chmod +x install-pypy.sh

# Get PyPy3
RUN ./install-pypy.sh "3.7" "7.3.3"
RUN pypy3 -V

# Get Python 3.5
RUN ./install-python.sh "3.5.9"
RUN python3.5 -V
RUN python3.5 -m pip -V

# Get Python 3.6
RUN ./install-python.sh "3.6.12"
RUN python3.6 -V
RUN python3.6 -m pip -V

# Get Python 3.7
RUN ./install-python.sh "3.7.9"
RUN python3.7 -V
RUN python3.7 -m pip -V

# Get Python 3.8
RUN ./install-python.sh "3.8.6"
RUN python3.8 -V
RUN python3.8 -m pip -V

# Get Python 3.8
RUN ./install-python.sh "3.9.0"
RUN python3.8 -V
RUN python3.8 -m pip -V

# Install tox
RUN python3.9 -m pip install --upgrade pip
RUN python3.9 -m pip install setuptools wheel tox
RUN tox --version