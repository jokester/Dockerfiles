#!/bin/sh

/usr/bin/ssh-keygen -A && exec /usr/bin/sshd -D
