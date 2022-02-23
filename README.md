# infrastructure
This repo is used to setup a VPC in aws using Cloudformation for Assignment 3
## Steps to run
Run the following commands to setup the Aws Cloudformation stack in Dev and Demo environments.
1. sh devSetup.sh          --- For setting up the Stack in dev environment.
2. sh devSetupTearDown.sh  --- For deleting the Stack in dev environment.
3. sh demoSetup.sh         --- For setting up the Stack in demo environment.
4. sh demoSetupTearDown.sh --- For deleting the Stack in demo environment.
5. sh demoSetupDeploy.sh   --- For deploying the Stack in demo environment. Here we have used "deploy" instead of "create-stack" of cloudformation.
6. sh devSetupDeploy.sh    --- For deploying the Stack in dev environment. Here we have used "deploy" instead of "create-stack" of cloudformation.

## Prerequisites
Make sure you have dev and demo profile setup for Aws Cli in terminal. 
Also make sure to have the proper permissions for running the scripts.