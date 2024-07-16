pipeline {
    agent {
      node {
        label 'docker-cloud'
      }
    }
    
    environment {
        MY_VAR = 'some_value'
    }
    
    stages {
        stage('Build') {
            steps {
                 echo "hello world"
            }
        }
    }
}
