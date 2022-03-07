#!/bin/bash -ex

#Removing Objects in the bucket
aws s3 rm s3://imagedatacsye --recursive --region=us-east-1 --profile=demo

#Removing bucket
aws s3 rb s3://imagedatacsye --region=us-east-1 --profile=demo

aws cloudformation delete-stack --stack-name demoVpc --profile demo