PYTHON_VERSION=$1
PYPY_VERSION=$2
BASE_URL="https://downloads.python.org/pypy"

FILE="pypy$PYTHON_VERSION-v$PYPY_VERSION-linux64"
ARCHIVE="$FILE.tar.bz2"
URL="$BASE_URL/$ARCHIVE"

echo "Installing PyPy $PYPY_VERSION - Python $PYTHON_VERSION"

wget -q -P /tmp $URL
tar -x -C /opt -f "/tmp/$ARCHIVE"
rm "/tmp/$ARCHIVE"
mv "/opt/$FILE" "/opt/pypy$PYTHON_VERSION"
ln -s "/opt/pypy$PYTHON_VERSION/bin/pypy3" "/usr/local/bin/pypy3"
