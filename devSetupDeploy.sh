#!/bin/bash -ex

#Random string generator
#echo $RANDOM | md5sum | head -c 20; echo;
randomsTR=$(echo $RANDOM | md5sum | head -c 20)

aws cloudformation deploy --region us-east-1 --stack-name devVpc --profile dev --template-file ./templates/csye6225-infra.yml --parameter-overrides VpcCIDR=10.0.0.0/16 \
EnvironmentName=dev Subnet1CIDR=10.0.1.0/24 Subnet2CIDR=10.0.2.0/24 Subnet3CIDR=10.0.3.0/24 PrivateSubnet1CIDR=10.0.4.0/24 PrivateSubnet2CIDR=10.0.5.0/24 \
PrivateSubnet3CIDR=10.0.6.0/24 AmiId=ami-085d8e0a317ade667 ApplicationInstanceType=t2.micro DbUser=root DbPassword=a9966995395A RandomString=$randomsTR  \
HostedZoneDomainName=dev.manojreddya.me. CodeDeployBucketName=codedeploy.dev.manojreddya.me --capabilities CAPABILITY_NAMED_IAM

aws cloudformation describe-stacks --region us-east-1 --stack-name devVpc --profile dev