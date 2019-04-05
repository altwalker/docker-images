ARG DOTNET_SDK_VERSION='2.2'
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
RUN wget https://github.com/GraphWalker/graphwalker-project/releases/download/LATEST-BUILDS/graphwalker-cli-4.0.0-SNAPSHOT.jar

# Create a script
RUN echo '#!/bin/bash\n/usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java -jar /graphwalker-cli-4.0.0-SNAPSHOT.jar "$@"' >> /graphwalker-cli
RUN chmod +x graphwalker-cli

# Create a symbolic link
RUN ln -s /graphwalker-cli /usr/bin/gw
