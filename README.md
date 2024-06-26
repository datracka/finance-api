# Finance Predictor API

## Introduction

REST Api exposing a finetuned bank statement clasificator model

## ROADMAP

// pending

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