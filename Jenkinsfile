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
                    docker.build("${DOCKER_REPO}:0.0.1", ".")
                }
            }
        }

         stage('Docker Push') {
            steps {
                script {
                    docker.withRegistry('', DOCKER_CREDENTIALS) {
                        def image = docker.image("${DOCKER_REPO}:0.0.1")
                        image.push()
                    }
                }
            }
        }
    }
}
