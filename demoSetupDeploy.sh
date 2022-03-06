#!/bin/bash -ex

aws cloudformation deploy --stack-name demoVpc --profile demo --template-file ./templates/csye6225-infra.yml --parameter-overrides VpcCIDR=10.0.0.0/16 \
EnvironmentName=demo Subnet1CIDR=10.0.1.0/24 Subnet2CIDR=10.0.2.0/24 Subnet3CIDR=10.0.3.0/24 AmiId=ami-069036478e8e52d7b ApplicationInstanceType=t2.micro

aws cloudformation describe-stacks --stack-name demoVpc --profile demo