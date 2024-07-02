#!/bin/bash

# Function to delete CloudFormation stacks
delete_stacks() {
    stacks=$(aws cloudformation list-stacks --stack-status-filter CREATE_IN_PROGRESS CREATE_FAILED CREATE_COMPLETE ROLLBACK_IN_PROGRESS ROLLBACK_FAILED ROLLBACK_COMPLETE DELETE_IN_PROGRESS DELETE_FAILED DELETE_COMPLETE --query "StackSummaries[?starts_with(StackName, 'eksctl-test-cluster')].StackName" --output text)
    for stack in $stacks; do
        echo "Deleting stack: $stack"
        aws cloudformation delete-stack --stack-name $stack
        aws cloudformation wait stack-delete-complete --stack-name $stack
    done
}

# Function to delete IAM roles
delete_iam_roles() {
    roles=$(aws iam list-roles --query "Roles[?contains(RoleName, 'eksctl-test-cluster')].RoleName" --output text)
    for role in $roles; do
        echo "Deleting IAM role: $role"
        aws iam delete-role --role-name $role
    done
}

# Function to delete EC2 security groups
delete_security_groups() {
    security_groups=$(aws ec2 describe-security-groups --query "SecurityGroups[?contains(GroupName, 'eksctl-test-cluster')].GroupId" --output text)
    for sg in $security_groups; do
        echo "Deleting security group: $sg"
        aws ec2 delete-security-group --group-id $sg
    done
}

# Function to delete VPCs
delete_vpcs() {
    vpcs=$(aws ec2 describe-vpcs --query "Vpcs[?contains(Tags[?Key=='Name'].Value, 'eksctl-test-cluster')].VpcId" --output text)
    for vpc in $vpcs; do
        echo "Deleting VPC: $vpc"
        aws ec2 delete-vpc --vpc-id $vpc
    done
}

# Execute the cleanup functions
echo "Starting cleanup process..."
delete_stacks
delete_iam_roles
delete_security_groups
delete_vpcs
echo "Cleanup process completed."
