FROM node:12-slim

ARG FIREFOX_VERSION=69.0.2

# required pacakges
RUN apt-get update -qqy \
    && apt-get -y install procps bzip2 libgtk-3-0 libdbus-glib-1-2 libxt6

# firefox
RUN wget --no-verbose -O /tmp/firefox.tar.bz2 https://download-installer.cdn.mozilla.net/pub/firefox/releases/$FIREFOX_VERSION/linux-x86_64/en-US/firefox-$FIREFOX_VERSION.tar.bz2 \
    && rm -rf /opt/firefox \
    && tar -C /opt -xjf /tmp/firefox.tar.bz2 \
    && rm /tmp/firefox.tar.bz2 \
    && ln -fs /opt/firefox/firefox /usr/bin/firefox \
    && firefox --version

# chrome
RUN wget --no-verbose -O /tmp/google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
    && apt -y install /tmp/google-chrome-stable_current_amd64.deb \
    && rm /tmp/google-chrome-stable_current_amd64.deb \
    && google-chrome --version
