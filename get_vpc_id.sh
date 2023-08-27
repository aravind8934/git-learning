#!/bin/bash
VPCID=$(aws ec2 describe-vpcs --region $1 | jq ".vpcs[].VpcId" -r)
for VPC in $VPCID; do
    echo "-----------------------------"
    echo "The vpc id is $VPC"
    echo "-----------------------------"
done
