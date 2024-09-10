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
  - [ ] Crete a test deployment directly in EC2 Cluster
  - [ ] Create Deployment Job that having as image ID parameter the github_sha deploys to the EC2 instance
  - [ ] Fix the certificate issue and update accordingly the deployment file

```bash
Using `kubectl --insecure-skip-tls-verify=true get nodes` works

But If I do:  `kubectl get nodes` I get
`Unable to connect to the server: tls: failed to verify certificate: x509: certificate is valid for 10.96.0.1, 172.31.14.68, not 15.237.222.25
```

- java improvements
  - [ ] maven pom.xml is updated each time a tag is created
  - [ ] Add an easy test and add it to the build
- [ ] Learn about blue / green, canary
- [ ] Increase app complexity and scale kubernetes
- [ ] Openshift
Interesting links

https://octopus.com/blog/deploying-amazon-eks-github-actions