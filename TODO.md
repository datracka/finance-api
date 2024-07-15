# TODOS

## General (using Github Actions)

- [x] Configure local and create App
- [x] Cloud EKS instance cluster / nodes created and AWS configured
- Github CI
  - [x] build and deploy actions done!  
  - [x] Split build from deploy.
    - [x] build done eacth time a PR or push to main
    - [ ] Understand why there are in GitHub 2 builds when a PR is nerged and not one
    - deploy each time a tag / release is created
- java improvements
  - [ ] maven pom.xml is updated each time a tag is created
  - [ ] Add an easy test and add it to the build
- [ ] Use terraform to create EKS instances
- [ ] Learn about blue / green, canary
- [ ] Increase app complexity and scale kubernetes
- [ ] Configure Ingress and Controller to reach the AWS instances

### jenkins-test branch

- [ ] Understanding Jenkins
- [ ] Understanding openshift


## Interesting links

https://octopus.com/blog/deploying-amazon-eks-github-actions