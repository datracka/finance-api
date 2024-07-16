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

Next: 

- [ ] Finalize understanding Jenkins ![Swingin' CICD with Spring Boot, Docker & Jenkins on OpenShift](https://www.youtube.com/watch?v=6YZvp2GwT0A)
  - [ ] Installed agent as cloud using Docker image
  - [ ] video in 48.20
  - [ ] Build hello world java in jenkins using jenking file
- [ ] Understanding openshift ![Learn Jenkins! Complete Jenkins Course - Zero to Hero](https://www.youtube.com/watch?v=UeABGTh4UjU)

## Interesting links

https://octopus.com/blog/deploying-amazon-eks-github-actions