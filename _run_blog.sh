#!/bin/sh
cp blogofile-blog/* . -R && blogofile build && blogofile serve 80
