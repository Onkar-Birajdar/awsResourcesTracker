#!/bin/bash

#####################################
#Author: Onkar Birajdar
#Date: 11th- Jan
#Version:v1

#This script will report the AWS resource usage

#####################################

#AWS S3
#ASW EC2
#AWS Lambda
#AWS IAM Users

set -x

#list s3 buckets
echo "List of s3 buckets"
aws s3 ls >> resources.txt

#list of ec2 instances
echo "List of ec2 instances"
aws ec2 describe-instances --region eu-north-1 | jq '.Reservations[].Instances[].InstanceId' >> resources

#list of lambda functions
echo "list of lambda functions"
aws lambda list-functions >> resources

#list IAM users
echo "List of IAM users"
aws iam list-users >> resources

