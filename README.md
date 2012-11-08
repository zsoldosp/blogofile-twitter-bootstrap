# Blogofile - Twitter Bootstrap integration

**It is work in progress, probably alpha release level, thus bugs are expected. Use it at your own risk**

Integration between the [Blogofile][http://www.blogofile.com/] blog engine and the [Bootstrap][http://twitter.github.com/bootstrap/] cross browser template.

# Usage instraction

* you should have blogofile and blogofile blog (0.8.1b) installed
* you need a linux like prompt (it was developed on windows using the git-bash shell)
* it is a fully functional site, with a little twist for paraller development: instead of running blogofile XX in the root directory, you need to first copy over the files from the directory that you would like to test - blogofile-blog or twitter-bootstrap

    * convenience scripts `_run_blogofile-blog.sh` and `_run_twitter-bootstrap.sh` are provided to invoke the copy - build - runserver cycle for testing
