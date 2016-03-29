#!/bin/bash

ARCHIVE=hello.tar.gz
rm -rf $ARCHIVE hello_flask
aws s3 cp s3://code-and-cannoli/$ARCHIVE $ARCHIVE
tar -xvzf $ARCHIVE
cd hello_flask
virtualenv venv
source venv/bin/activate
pip install Flask
pip install requests
./hello.py &
