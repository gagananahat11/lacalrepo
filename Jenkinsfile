pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Cloning the repository...'
                checkout scm
            }
        }

        stage('Deploy HTML with Docker Compose') {
            steps {
                echo 'Starting Nginx container to serve static HTML...'
                sh 'docker-compose up -d'
            }
        }
    }

    post {
        success {
            echo 'Static HTML site deployed successfully!'
        }
        failure {
            echo 'Deployment failed. Check logs.'
        }
    }
}
