# Finance Predictor API

## Introduction

REST Api exposing a finetuned bank statement clasificator model

## Run docker and kubernetes

In Visual Code

run `docker image: VC, docker image build`

Then

run `kubectl apply -f deployment.yaml`

## Cloud (WIP)

To get the external IP `kubectl get service api-service`

docker repository: `datracka/api`

context `arn:aws:eks:eu-west-3:590183910983:cluster/test-cluster`