ARG ALTWALKER_VERSION="0.3.1"
FROM altwalker/altwalker:${ALTWALKER_VERSION}

ARG DOTNET_SDK_VERSION="2.1"

RUN wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.asc.gpg && \
    mv microsoft.asc.gpg /etc/apt/trusted.gpg.d/ && \
    wget -q https://packages.microsoft.com/config/debian/10/prod.list && \
    mv prod.list /etc/apt/sources.list.d/microsoft-prod.list && \
    chown root:root /etc/apt/trusted.gpg.d/microsoft.asc.gpg && \
    chown root:root /etc/apt/sources.list.d/microsoft-prod.list

RUN apt-get install -y apt-transport-https && \
    apt-get update && \
    apt-get install -y dotnet-sdk-${DOTNET_SDK_VERSION}
