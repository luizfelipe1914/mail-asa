#!/bin/bash

/etc/init.d/named start
bash
tail -f /dev/null
