#!/bin/bash

sed -i "s/MAX_CLIENT/${MAX_CLIENT:-100}/g" /etc/icecast2/icecast.xml

sed -i "s/MAX_SOURCE/${MAX_SOURCE:-2}/g" /etc/icecast2/icecast.xml

sed -i "s/SOURCE_PASSWORD/${SOURCE_PASSWORD:-hackme}/g" /etc/icecast2/icecast.xml

sed -i "s/RELAY_PASSWORD/${RELAY_PASSWORD:-hackme}/g" /etc/icecast2/icecast.xml

sed -i "s/ADMIN_USERNAME/${ADMIN_USERNAME:-admin}/g" /etc/icecast2/icecast.xml

sed -i "s/ADMIN_PASSWORD/${ADMIN_PASSWORD:-hackme}/g" /etc/icecast2/icecast.xml

su - icecast2 -s /bin/bash -c "/usr/bin/icecast2 -c /etc/icecast2/icecast.xml"