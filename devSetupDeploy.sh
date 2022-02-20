#!/bin/bash -ex

aws cloudformation deploy --region us-east-1 --stack-name devVpc --profile dev --template-file ./templates/csye6225-infra.yml --parameter-overrides VpcCIDR=10.0.0.0/16 \
EnvironmentName=dev Subnet1CIDR=10.0.1.0/24 Subnet2CIDR=10.0.2.0/24 Subnet3CIDR=10.0.3.0/24

aws cloudformation describe-stacks --region us-east-1 --stack-name devVpc --profile dev