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

docker repository: datracka/api

## TODOS

* [x] Configure local and create App
* [x] Cloud EKS instance cluster / nodes created and AWS configured
* Github CI
  * [x] build and deploy actions done!  
  * [ ] Split build from deploy.
    * build done eacth time a PR or push to main
    * deploy each time a tag / release is created
* java improvements
  * [ ] maven pom.xml is updated each time a tag is created
  * [ ] Add an easy test and add it to the build
* [ ] Use terraform to create EKS instances
* [ ] Learn about blue / green, canary
* [ ] Increase app complexity and scale kubernetes
* [ ] Eventually move from AWS

Interesting links

https://octopus.com/blog/deploying-amazon-eks-github-actions