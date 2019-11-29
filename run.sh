#! /bin/sh
###############################################################
# Copyright (C) 2019 Duall Sistemas Ltda.
###############################################################

set -e

docker build --force-rm -t firebird .

docker run -p 3050:3050 -v $(pwd)/data:/var/lib/firebird/3.0/data -dt --restart always firebird