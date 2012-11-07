#!/bin/sh
cp blogofile-blog-template/* . -R && cd .. && blogofile build && blogofile serve 80
