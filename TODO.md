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

Next Steps

- [-] Modify jenkinsfile to build the docker image and push it to the docker hub as happens with Github Actions
  -  [ ] do build docker with jenkins using jenkins file and sh
     - Issue: process apparently never started in /Users/vicensfayos/.jenkins/workspace/awesome vicen's pipeline@tmp/durable-6af43c4f
      (running Jenkins temporarily with -Dorg.jenkinsci.plugins.durabletask.BourneShellScript.LAUNCH_DIAGNOSTICS=true might make the problem clearer)

script returned exit code -2
  -  [ ] Try to add docker.build that abstract the system nouances...
  -  [ ] Add the proper agent (it was removed) and the push part.
  -  [ ] Finalize blog post and record yourself Dscript?.
- [ ] Add openshift to the Mix ![Learn Jenkins! Complete Jenkins Course - Zero to Hero](https://www.youtube.com/watch?v=UeABGTh4UjU)
- [ ] Move to the Deployment phase!


## Interesting links

https://octopus.com/blog/deploying-amazon-eks-github-actions

## Bonus: Animatation

introduction to blender: https://www.youtube.com/watch?v=hb2bbfiNBXA
animate a line: https://www.youtube.com/watch?v=l96CjcqSj_g