#!/bin/bash

mkdir -p /var/run/named
chmod 775 /var/run/named
chown root:bind /var/run/named

chmod 775 /var/bind
chown root:bind /var/bind

exec /usr/sbin/named -u bind -g
