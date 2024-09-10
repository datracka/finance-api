## TODOS

- [x] Configure local and create App
- [x] Cloud EKS instance cluster / nodes created and AWS configured
- Github CI
  - [x] build and deploy actions done!  
  - [x] Split build from deploy.
    - [x] build done eacth time a PR or push to main
    - [x] deploy each time a tag / release is created
- Github CD
  - [x] Test connectivity job
  - [x] Crete a test deployment directly in EC2 Cluster
  - [x] Create Deployment Job that having as image ID parameter the github_sha deploys to the EC2 instance
  - [ ] Error: Fix the certificate issue and update accordingly the deployment file
  - [ ] Error: Expose a Deployment using LoadBalancer.
  - [ ] Error: Deployment complaint
  - [ ] Expose the deployment as NodeType

## Errors / Bugs to fix

### Deployment complains

Go to K8S cluster and run `kubectl describe pod api-deployment-76f96948d4-95qz7` (its an example one the pods deployed.. can have other naming)

```
 Warning  InspectFailed  10s (x4 over 24s)  kubelet            Failed to apply default image tag "PLACEHOLDER_IMAGE": couldn't parse image name "PLACEHOLDER_IMAGE": invalid reference format: repository name (library/PLACEHOLDER_IMAGE) must be lowercase
```

It is something wrong how the replacement of the PLACEHOLDER_IMAGE happens... please recheck the logi

### Fix the certificate issue and update accordingly the deployment file

The problem is that when using kubectl from an external machine (local or github runner) I have a problem with the certificate installed in the cluster. 

Temporal Solution

in the kubeconfig that has to be installed locally or in github I added 
 `--insecure-skip-tls-verify=true` and remove the certificate itself see /Users/vicensfayos/kubeconfig_no_cert)

 Original kubeconfig you can find it here /Users/vicensfayos/kubeconfig and of course in K8S cluster :)
 

```bash
Using `kubectl --insecure-skip-tls-verify=true get nodes` works

But If I do:  `kubectl get nodes` I get
`Unable to connect to the server: tls: failed to verify certificate: x509: certificate is valid for 10.96.0.1, 172.31.14.68, not 15.237.222.25
```

### Expose a Deployment using Load Balancer

By now we expose the deployment with NodeType but it relies in an ugly port. 
Better using LoadBalancer servicen in K8S. It needs though AWS support. to install and AWS adaptor and controller and configure it. and Also a service and an ingress.... it is WIP

## Other things

- java improvements
  - [ ] maven pom.xml is updated each time a tag is created
  - [ ] Add an easy test and add it to the build
- [ ] Learn about blue / green, canary
- [ ] Increase app complexity and scale kubernetes
- [ ] Openshift

Interesting links

https://octopus.com/blog/deploying-amazon-eks-github-actions