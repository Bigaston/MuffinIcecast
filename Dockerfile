FROM debian

COPY ./startup.sh /startup.sh
COPY ./icecast.xml /etc/icecast2/icecast.xml

RUN apt update
RUN yes no | apt install -y icecast2

CMD /bin/bash /startup.sh