# Finance Predictor API

## Introduction

REST Api exposing a finetuned bank statement clasificator model

## How to

### run dashboard 

check project 

## run docker and kubernetes

run `docker image: VC, docker image build`
run `kubectl apply -f deployment.yaml`

## Amazon

to get session: `aws sts get-session-token --duration-seconds 3600` 



## Docker **repository**

datracka

## ROADMAP

- Deploy dummy app in AWS using GA as CI and Terraform for IaaS
- Make it more complex splitting app in FE / BE and DB

## TODOS

following this: https://octopus.com/blog/deploying-amazon-eks-github-actions

- [ ]  Create ECR instance
- [ ]  Add ECR repo to github secrets

## learning path

- [ ]  Deploy image created, (versioned) from local 
  - [ ]  Think versioning strategy
- [ ]  Configure kubernetes secrets / AWS secret manager
- [ ]  Use Terraform for creating infrastructure (EKS)
- [ ]  Configure Github Actions
  - [ ]  Add CI / CD Pipeline (workflow)
    - [ ]  github/workflows/deploy.yml (build, test, and deploy)
    - [ ]  Build new image from docker file when push to main
    - [ ]  push image to EKS
  - [ ]  Credentials to connect to EKS
  
### Doing

Pushed image to docker hub and creatd succesfully kubernetes
Installed AWS CLI
Created a IAM account to manage AWS CLI
Following this tutorial https://docs.aws.amazon.com/codecatalyst/latest/userguide/deploy-tut-eks.html but I dont like because I have to use AWS services (codecatalyst instead github actions and ekstls instead terraform