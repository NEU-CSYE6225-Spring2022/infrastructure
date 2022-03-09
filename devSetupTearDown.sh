#!/bin/bash -ex

#Removing Objects in the bucket
aws s3 rm s3://imagedatacsye --recursive --region=us-east-1 --profile=dev

#Removing bucket
#aws s3 rb s3://imagedatacsye --region=us-east-1 --profile=dev

aws cloudformation delete-stack --stack-name devVpc --profile dev --region us-east-1