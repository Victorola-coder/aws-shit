#!/bin/bash

# Create the policies using AWS CLI

# Apply S3 Read-Only Policy for User-1
aws iam create-policy \
  --policy-name S3-ReadOnly-Policy \
  --policy-document file://policies/ec2-admin-policy.json

# Apply EC2 Read-Only Policy for User-2
aws iam create-policy \
  --policy-name EC2-ReadOnly-Policy \
  --policy-document file://policies/ec2-readonly-policy.json

# Apply EC2 Admin Policy for User-3
aws iam create-policy \
  --policy-name EC2-Admin-Policy \
  --policy-document file://policies/ec2-admin-policy.json

echo "Policies have been created"
