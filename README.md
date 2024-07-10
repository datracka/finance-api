# Finance Predictor API

## Introduction

REST Api exposing a finetuned bank statement clasificator model

### Run dashboard

1. install kubernetes dashboard

   ```shell
   kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.7.0/aio/deploy/recommended.yaml
   ```

2. Run a Service Account

   ```shell
   kubectl apply -f dashboard.adminuser.yml
   ```

3. Get a token and copy the token into your clipboard.

   ```shell
   kubectl -n kubernetes-dashboard create token admin-user
   ```

4. Run the dashaboard
  
   ```shell
   kubectl proxy
   ```

5. Visit !()[http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/]
6. Paste the token into the login screen and you can then sign in to the dashboard.

## Run docker and kubernetes

In Visual Code

run `docker image: VC, docker image build`

Then

run `kubectl apply -f deployment.yaml`

## Cloud (WIP)

To get the external IP `kubectl get service api-service`

docker repository: `datracka/api`

context `arn:aws:eks:eu-west-3:590183910983:cluster/test-cluster`