pipeline {
    agent {
      node {
        label 'docker-cloud'
      }
    }
    
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
                     sh 'docker build -t ${DOCKER_REPO}:0.0.1 .'
                }
            }
        }

         stage('Docker Push') {
            steps {
                script {
                    withCredentials([usernamePassword(credentialsId: DOCKER_CREDENTIALS, usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                        sh 'echo $DOCKER_PASSWORD | docker login -u $DOCKER_USERNAME --password-stdin'
                    }
                    sh 'docker push ${DOCKER_REPO}:0.0.1'
                }
            }
        }
    }
}
