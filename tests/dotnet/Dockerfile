ARG DOTNET_SDK_VERSION='2.2'
ARG GRAPHWALKER_VERSION='4.2.0'

FROM mcr.microsoft.com/dotnet/core/sdk:${DOTNET_SDK_VERSION}

RUN apt-get update && apt-get install -y \
    wget \
    unzip \
    openjdk-8-jdk \
    python3 \
    python3-pip

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

# Get the GraphWalker CLI jar
RUN wget --no-verbose -O ./graphwalker-cli.jar https://github.com/GraphWalker/graphwalker-project/releases/download/${GRAPHWALKER_VERSION}/graphwalker-cli-${GRAPHWALKER_VERSION}.jar

# Create a script
RUN echo '#!/bin/bash\n/usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java -jar /graphwalker-cli.jar "$@"' >> /graphwalker-cli.sh
RUN chmod +x graphwalker-cli.sh

# Create a symbolic link
RUN ln -s /graphwalker-cli.sh /usr/bin/gw
