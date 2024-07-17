pipeline {
    agent any

    /*
    agent {
      node {
        label 'docker-cloud'
      }
    }
    */
    
    environment {
        DOCKER_CREDENTIALS_ID = 'docker-credentials'
        DOCKER_REPO = 'datracka/api'
    }
    
    stages {
        stage('Checkout') {
            steps {
                // Checkout the repository from GitHub
                git url: 'https://github.com/datracka/finance-api.git', branch: 'jenkins-test'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                  try {
                     sh -c 'docker build -t ${DOCKER_REPO}:${env.BUILD_ID} .'
                  } catch (Exception e) {
                    echo "Failed to build Docker image: ${e}"
                  }
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                script {
                    try {
                      docker.withRegistry('https://index.docker.io/v1/', DOCKER_CREDENTIALS_ID) {
                        sh -c "echo $DOCKER_PASSWORD | docker login -u $DOCKER_USERNAME --password-stdin"
                      }
                      sh "docker push ${DOCKER_REPO}:${env.BUILD_ID}"
                  } catch (Exception e) {
                    echo "Failed to push Docker image: ${e}"
                  }
                }
            }
        }
    }
}
