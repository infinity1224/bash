#!/bin/bash

#################################################
#Author: Azmathulla G
#Version: v1
#Date: 09-12-2024
#This script will report the aws resources usage
#################################################

set -x #debug mode

#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM Users

#list s3 buckets
aws s3 ls >> resources.txt

#list EC2 instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resources.txt

#list lambda
aws lambda list-functions >> resources.txt

#list users
aws iam list-users >> resources.txt
