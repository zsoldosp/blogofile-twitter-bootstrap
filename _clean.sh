#!/bin/sh
find | grep -v .git | grep -v '^./\(blogofile-blog\|_posts\|twitter-bootstrap\)' | grep -v "\.sh$" | grep -v "^./\(_htaccess\|README.md\|favicon.ico\|robots.txt\|crossdomain.xml\|_config.py\)$" | grep -v '^\(\.\|\.\.\)$' | grep -v '.swp$' | xargs rm -rf
