#!/bin/bash

if [ ! -d mt-aws-glacier ]; then
  git clone git@github.com:vsespb/mt-aws-glacier.git
fi

docker build -t datatransfer-aws-glacier:1.0.0 .
