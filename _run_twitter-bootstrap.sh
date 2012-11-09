#!/bin/sh
./_clean.sh && cp twitter-bootstrap/* . -R && blogofile build && blogofile serve 80

