#!/bin/bash -ex

aws cloudformation create-stack --region us-east-1 --stack-name dev --profile dev --template-body file://templates/csye6225-infra.yml --parameters ParameterKey=VpcCIDR,ParameterValue=10.0.0.0/16 \
ParameterKey=EnvironmentName,ParameterValue=dev ParameterKey=Subnet1CIDR,ParameterValue=10.0.1.0/24 ParameterKey=Subnet2CIDR,ParameterValue=10.0.2.0/24 ParameterKey=Subnet3CIDR,ParameterValue=10.0.3.0/24

aws cloudformation wait stack-create-complete --stack-name onlyVpc --profile dev --region us-east-1

aws cloudformation describe-stacks --region us-east-1 --stack-name onlyVpc --profile dev