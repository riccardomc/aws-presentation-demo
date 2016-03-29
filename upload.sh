#!/bin/bash

ARCHIVE=hello.tar.gz
rm -rf hello_flask/venv
tar -cvzf $ARCHIVE hello_flask
aws s3 cp $ARCHIVE s3://code-and-cannoli/hello.tar.gz
rm -rf $ARCHIVE
