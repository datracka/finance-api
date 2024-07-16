pipeline {
    agent {
      node {
        label 'docker-cloud'
      }
    }
    
    environment {
        // Define environment variables here if needed
        // Example:
        // MY_VAR = 'some_value'
    }
    
    stages {
        stage('Stage 1') {
            steps {
                // Define steps for Stage 1
                // Example:
                // sh 'echo "Hello World"'
            }
        }
        
        stage('Stage 2') {
            when {
                // Define conditions when to run this stage
                // Example:
                // environment name: 'MY_VAR', value: 'some_value'
            }
            steps {
                // Define steps for Stage 2
            }
        }
        
        // Add more stages as needed
    }
    
    post {
        // Define post-build actions here
        success {
            // Actions to take on successful build
        }
        failure {
            // Actions to take on failed build
        }
        always {
            // Actions to take always, regardless of build result
        }
    }
}
