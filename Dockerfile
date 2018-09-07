FROM node:10

RUN groupmod -g 999 node && usermod -u 999 -g 999 node

RUN \
    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
    echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list && \
    apt-get update && \
    apt-get install -y google-chrome-stable xvfb && \
    rm -rf /var/lib/apt/lists/*

RUN \
    export DISPLAY=:99.0

CMD \
    Xvfb -ac $DISPLAY &

USER node
