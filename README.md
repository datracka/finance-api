# Finance Predictor API

[![Build Docker Image](https://github.com/datracka/finance-api/actions/workflows/build.yml/badge.svg)](https://github.com/datracka/finance-api/actions/workflows/build.yml)

## Introduction

REST Api exposing a finetuned bank statement clasificator model

## Run docker and kubernetes

In Visual Code

run `docker image: VC, docker image build`

Then

run `kubectl apply -f deployment.yaml`

## Cloud

We are deploying in a EC2 AWS instance using kubernetes. 

Image build happens automatically using github actions

Deploy is manual using the github action  "Deploy to Kubernetes on EC2" job and passing as parameter the selected image tag from [the artifact repository](https://hub.docker.com/repository/docker/datracka/api/general)