FROM debian

COPY ./startup.sh /startup.sh
COPY ./icecast.xml /etc/icecast2/icecast.xml

RUN apt-get update
RUN yes no | apt-get install -y --no-install-recommends icecast2
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

CMD /bin/bash /startup.sh