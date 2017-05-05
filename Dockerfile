FROM node:6.10.2

# chrome
RUN \
    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
    echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list && \
    apt-get update && \
    apt-get install -y google-chrome-stable xvfb && \
    rm -rf /var/lib/apt/lists/*

# xvfb
RUN \
    export DISPLAY=:99.0

CMD \
    Xvfb -ac $DISPLAY &
    
