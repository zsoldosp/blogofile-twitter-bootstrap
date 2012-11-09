#!/bin/sh
./_clean.sh && cp blogofile-blog/* . -R && blogofile build && blogofile serve 80
