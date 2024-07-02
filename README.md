# Finance Predictor API

## Introduction

REST Api exposing a finetuned bank statement clasificator model

## How to

### EKS Management using eksctl

* Create a cluster `eksctl create cluster --name test-cluster --nodegroup-name test-nodes --node-type t3.medium --nodes 1 --nodes-min 1 --nodes-max 1  --managed`

* Delete a cluster `eksctl delete cluster --name test-cluster`
* Delete all: check cleanup_script.sh

* Check Cluster status `aws cloudformation list-stacks --stack-status-filter CREATE_IN_PROGRESS CREATE_FAILED CREATE_COMPLETE ROLLBACK_IN_PROGRESS ROLLBACK_FAILED ROLLBACK_COMPLETE DELETE_IN_PROGRESS DELETE_FAILED DELETE_COMPLETE`

### run dashboard

pending check related project 

## run docker and kubernetes

run `docker image: VC, docker image build`
run `kubectl apply -f deployment.yaml`

## Amazon

to get session: `aws sts get-session-token --duration-seconds 3600`

## Docker **repository**

datracka

## ROADMAP

* Deploy dummy app in AWS using GA as CI and Terraform for IaaS
* Make it more complex splitting app in FE / BE and DB

## TODOS

following this: https://octopus.com/blog/deploying-amazon-eks-github-actions

* [ ]  Create ECR instance
* [ ]  Add ECR repo to github secrets
* [ ]  

## Gitbub Action

### CI

* [ ] build
* [ ] test
* [ ] deploy

Perrequisites:

* Registry on place (docker)
* Configure secrets from docker

steps:

On PR to main

* Configure AWS credentials
* Login to Docker Hub
* Build Image and push to Docker Hub
  * Maybe test also 
  * Maybe Tag the repo or the image or what

### Cloud / AWS EKS

* Manually
  * Configure EKS to use docker hub
  * Create EKS instances
* Do the same with terraform

## Learning Path

* Dockerize
  * [x]  Deploy image created, (versioned) from local
* CI
  * [ ] Github actions
* CD
  * [ ]  Think versioning strategy
* [ ]  Use Terraform for creating infrastructure (EKS)
  
