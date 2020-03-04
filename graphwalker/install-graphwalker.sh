GRAPHWALKER_VERSION=$1

echo "Downloading GraphWalker $GRAPHWALKER_VERSION..."
wget "https://github.com/GraphWalker/graphwalker-project/releases/download/$GRAPHWALKER_VERSION/graphwalker-cli-$GRAPHWALKER_VERSION.jar"

echo "Installing GraphWalker..."
mkdir -p ~/.graphwalker
mv graphwalker-cli-$GRAPHWALKER_VERSION.jar ~/.graphwalker/

echo '#!/bin/bash' > ~/.graphwalker/graphwalker-cli.sh
echo 'java -jar ~/.graphwalker/graphwalker-cli-'$GRAPHWALKER_VERSION'.jar "$@"' >> ~/.graphwalker/graphwalker-cli.sh

chmod +x ~/.graphwalker/graphwalker-cli.sh
ln -s ~/.graphwalker/graphwalker-cli.sh /usr/local/bin/gw

echo "GraphWalker is installed."