#!/bin/bash

vagrant ssh-config > config.txt
scp -F config.txt default:/var/tmp/shibboleth.tar.bz2 .
