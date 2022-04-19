#!/bin/bash -ex

#Generating the random String
randomsTR=$(echo $RANDOM | md5sum | head -c 20)

#aws iam upload-server-certificate --server-certificate-name sslProd --certificate-body file://manojreddya_me/manojreddya_me.crt --private-key file://private.key

aws cloudformation deploy --region us-east-1 --stack-name demoVpc --profile demo --template-file ./templates/csye6225-infra.yml --parameter-overrides VpcCIDR=10.0.0.0/16 \
EnvironmentName=demo Subnet1CIDR=10.0.1.0/24 Subnet2CIDR=10.0.2.0/24 Subnet3CIDR=10.0.3.0/24 PrivateSubnet1CIDR=10.0.4.0/24 PrivateSubnet2CIDR=10.0.5.0/24 \
PrivateSubnet3CIDR=10.0.6.0/24 AmiId=ami-08baa9dd4ee99dc36 ApplicationInstanceType=t2.micro DbUser=root DbPassword=a9966995395A RandomString=$randomsTR \
HostedZoneDomainName=prod.manojreddya.me. CodeDeployBucketName=codedeploy.manojreddya.me AccountId=757570737110 SEStopicArn=prod.manojreddya.me --capabilities CAPABILITY_NAMED_IAM

aws cloudformation describe-stacks --region us-east-1 --stack-name demoVpc --profile demo
