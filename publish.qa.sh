#!/bin/bash
#build application
npm run build
#install aws
pip install awscli
#clean previous files
aws s3 rm $AWS_BUCKET_QA_ADDRESS --recursive
#upload new files
aws s3 cp build/ $AWS_BUCKET_QA_ADDRESS --recursive