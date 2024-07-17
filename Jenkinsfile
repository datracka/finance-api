pipeline {
    agent any
    
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
                    def image = docker.build("${DOCKER_REPO}:${env.BUILD_ID}", ".")
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
                        // Push the Docker image
                        def image = docker.build("${DOCKER_REPO}:${env.BUILD_ID}")
                        image.push()
                        image.push('latest')
                    }
                  } catch (Exception e) {
                    echo "Failed to push Docker image: ${e}"
                  }
                }
            }
        }
    }
}
