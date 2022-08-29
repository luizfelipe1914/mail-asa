#!/bin/bash

service postfix start
service dovecot start
bash
tail -f /dev/null